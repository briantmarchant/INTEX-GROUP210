using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NorthWestLabs.Startup))]
namespace NorthWestLabs
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            //ConfigureAuth(app);
        }
    }
}
