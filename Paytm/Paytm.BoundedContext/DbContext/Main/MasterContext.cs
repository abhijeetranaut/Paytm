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
    public class MasterContext : BaseBoundedContext, IMasterContext
    {
        public MasterContext(MainSqlDbContext sqlDbContext,  IOptions<DatabaseConfig> databaseConfig, IHttpContextAccessor contextAccessor,ITenantDbConnectionInfo tenantDbConnection): base(sqlDbContext, databaseConfig.Value, contextAccessor,tenantDbConnection){ }

                    #region DbSets
                    public DbSet<BookingMaster> BookingMasters { get; set; }
                    public DbSet<Flight> Flights { get; set; }
            		public DbSet<FlightBooking> FlightBookings { get; set; }            		
            		public DbSet<FlightAvailableSeat> FlightAvailableSeats { get; set; }
            		public DbSet<FlightTravellerDetail> FlightTravellerDetails { get; set; }
            		public DbSet<BusTravellerDetail> BusTravellerDetails { get; set; }
            		public DbSet<BusAvailableSeat> BusAvailableSeats { get; set; }
            		public DbSet<BusBooking> BusBookings { get; set; }
            		public DbSet<Bus> Buses { get; set; }
            #endregion DbSets

    }


    public interface IMasterContext : IDbContext
    {
    }
}

