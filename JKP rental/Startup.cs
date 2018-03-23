using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JKP_rental.Startup))]
namespace JKP_rental
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
