using Microsoft.Extensions.DependencyInjection;
using Paytm.Infrastructure.Singleton;
using Paytm.BoundedContext.Singleton;
using RxWeb.Core.Data;

namespace Paytm.Api.Bootstrap
{
    public static class Singleton
    {
        public static void AddSingletonService(this IServiceCollection serviceCollection)
        {
            #region Singleton
            serviceCollection.AddSingleton<ITenantDbConnectionInfo, TenantDbConnectionInfo>();
            serviceCollection.AddSingleton(typeof(UserAccessConfigInfo));
            #endregion Singleton
        }

    }
}




