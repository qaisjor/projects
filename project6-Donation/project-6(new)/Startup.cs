using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(project_6_new_.Startup))]
namespace project_6_new_
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
