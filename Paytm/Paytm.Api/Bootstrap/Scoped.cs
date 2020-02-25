#region Namespace
using Microsoft.Extensions.DependencyInjection;
using Paytm.Infrastructure.Security;
using RxWeb.Core.Data;
using RxWeb.Core.Security;
using RxWeb.Core.Annotations;
using RxWeb.Core;
using Paytm.UnitOfWork.DbEntityAudit;
using Paytm.BoundedContext.Main;
using Paytm.UnitOfWork.Main;

            using Paytm.Domain.UserModule;
            #endregion Namespace




namespace Paytm.Api.Bootstrap
{
    public static class ScopedExtension
    {

        public static void AddScopedService(this IServiceCollection serviceCollection)
        {
            serviceCollection.AddScoped<IRepositoryProvider, RepositoryProvider>();
            serviceCollection.AddScoped<ITokenAuthorizer, TokenAuthorizer>();
            serviceCollection.AddScoped<IModelValidation, ModelValidation>();
            serviceCollection.AddScoped<IAuditLog, AuditLog>();
            serviceCollection.AddScoped<IApplicationTokenProvider, ApplicationTokenProvider>();
            serviceCollection.AddScoped(typeof(IDbContextManager<>), typeof(DbContextManager<>));

            #region ContextService

            serviceCollection.AddScoped<ILoginContext, LoginContext>();
            serviceCollection.AddScoped<ILoginUow, LoginUow>();
                        serviceCollection.AddScoped<IMasterContext, MasterContext>();
            serviceCollection.AddScoped<IMasterUow, MasterUow>();
                        serviceCollection.AddScoped<IMasterContext, MasterContext>();
            serviceCollection.AddScoped<IMasterUow, MasterUow>();                        
                        serviceCollection.AddScoped<IFlightContext, FlightContext>();
            serviceCollection.AddScoped<IFlightUow, FlightUow>();
                        serviceCollection.AddScoped<IBookingMasterContext, BookingMasterContext>();
            serviceCollection.AddScoped<IBookingMasterUow, BookingMasterUow>();
                        serviceCollection.AddScoped<IFlightavailableSeatsContext, FlightavailableSeatsContext>();
            
                        serviceCollection.AddScoped<IBookingMasterContext, BookingMasterContext>();
            serviceCollection.AddScoped<IBookingMasterUow, BookingMasterUow>();                       
            serviceCollection.AddScoped<IUserUow, UserUow>();
                        serviceCollection.AddScoped<IUserContext, UserContext>();
            serviceCollection.AddScoped<IUserUow, UserUow>();
            #endregion ContextService

            

            #region DomainService
            
            
            serviceCollection.AddScoped<IUserDomain, UserDomain>();
            #endregion DomainService






        }
    }
}




