//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Project_WorldCup
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WorldCup_QatarEntities : DbContext
    {
        public WorldCup_QatarEntities()
            : base("name=WorldCup_QatarEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<country> countries { get; set; }
        public virtual DbSet<loginID> loginIDs { get; set; }
        public virtual DbSet<newsArticle> newsArticles { get; set; }
        public virtual DbSet<teamGroup> teamGroups { get; set; }
        public virtual DbSet<teamPlayer> teamPlayers { get; set; }
    }
}
