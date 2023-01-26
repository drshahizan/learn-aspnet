using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Web;

namespace WorldCupOnTheGo.Global
{
    public static class QueryableHelper
    {
        public static Object GetPropValue(String name, object obj, Type type)
        {
            var parts = name.Split('.').ToList();
            var currentPart = parts[0];
            PropertyInfo info = type.GetProperty(currentPart);
            if (info == null) { return null; }
            if (name.IndexOf(".") > -1)
            {
                parts.Remove(currentPart);
                return GetPropValue(String.Join(".", parts), info.GetValue(obj, null), info.PropertyType);
            }
            else
            {
                return info.GetValue(obj, null).ToString();
            }
        }
        public static IQueryable<TModel> OrderBy<TModel>(this IQueryable<TModel> q, string name)
        {
            Type entityType = typeof(TModel);
            PropertyInfo p = entityType.GetProperty(name);
            if (p == null) //temp workaound
            {
                p = entityType.GetProperty("Id");
            }
            MethodInfo m = typeof(QueryableHelper).GetMethod("OrderByProperty").MakeGenericMethod(entityType, p.PropertyType);
            return (IQueryable<TModel>)m.Invoke(null, new object[] { q, p });

        }

        public static IQueryable<TModel> OrderByDescending<TModel>(this IQueryable<TModel> q, string name)
        {
            Type entityType = typeof(TModel);
            PropertyInfo p = entityType.GetProperty(name);
            if (p == null) //temp workaound
            {
                p = entityType.GetProperty("Id");
            }
            MethodInfo m = typeof(QueryableHelper).GetMethod("OrderByPropertyDescending").MakeGenericMethod(entityType, p.PropertyType);
            return (IQueryable<TModel>)m.Invoke(null, new object[] { q, p });
        }

        public static IQueryable<TModel> OrderByPropertyDescending<TModel, TRet>(IQueryable<TModel> q, PropertyInfo p)
        {
            ParameterExpression pe = Expression.Parameter(typeof(TModel));
            //Expression se = Expression.Convert(Expression.Property(pe, p), typeof(object));
            Expression se = Expression.Convert(Expression.Property(pe, p), p.PropertyType);
            return q.OrderByDescending(Expression.Lambda<Func<TModel, TRet>>(se, pe));
        }

        public static IQueryable<TModel> OrderByProperty<TModel, TRet>(IQueryable<TModel> q, PropertyInfo p)
        {
            ParameterExpression pe = Expression.Parameter(typeof(TModel));
            //Expression se = Expression.Convert(Expression.Property(pe, p), typeof(object));
            Expression se = Expression.Convert(Expression.Property(pe, p), p.PropertyType);
            return q.OrderBy(Expression.Lambda<Func<TModel, TRet>>(se, pe));
        }
    }
}