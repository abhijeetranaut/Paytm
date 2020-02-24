using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Paytm.BoundedContext.SqlContext;
using Paytm.Models.Main;
using Paytm.Models;
using Paytm.BoundedContext.Singleton;
using RxWeb.Core.Data;
using RxWeb.Core.Data.Models;
using RxWeb.Core.Data.BoundedContext;

namespace Paytm.BoundedContext.Main
{
    public class BookingMasterContext : BaseBoundedContext, IBookingMasterContext
    {
        public BookingMasterContext(MainSqlDbContext sqlDbContext,  IOptions<DatabaseConfig> databaseConfig, IHttpContextAccessor contextAccessor,ITenantDbConnectionInfo tenantDbConnection): base(sqlDbContext, databaseConfig.Value, contextAccessor,tenantDbConnection){ }

            #region DbSets
            #endregion DbSets

    }


    public interface IBookingMasterContext : IDbContext
    {
    }
}

