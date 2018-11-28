using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NewNewEnd.Startup))]
namespace NewNewEnd
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
