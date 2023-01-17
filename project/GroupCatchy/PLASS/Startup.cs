using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PLASS.Startup))]
namespace PLASS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
