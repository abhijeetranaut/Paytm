using Microsoft.AspNetCore.Mvc;
using System.Linq;
using Paytm.Domain.MasterModule;
using Paytm.Models.Main;
using RxWeb.Core.AspNetCore;
using RxWeb.Core.Security.Authorization;

namespace Paytm.Api.Controllers.MasterModule
{
    [ApiController]
    [Route("api/[controller]")]
	
	public class FlightavailableSeatsController : BaseDomainController<FlightavailableSeat>

    {
        public FlightavailableSeatsController(IFlightavailableSeatDomain domain):base(domain) {}

    }
}
