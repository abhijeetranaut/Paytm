using Microsoft.AspNetCore.Mvc;
using System.Linq;
using Paytm.UnitOfWork.Main;
using Paytm.Models.Main;
using RxWeb.Core.AspNetCore;
using RxWeb.Core.Security.Authorization;

namespace Paytm.Api.Controllers.MasterModule
{
    [ApiController]
    [Route("api/[controller]")]
	
	public class FlightController : BaseController<Flight,Flight,Flight>

    {
        public FlightController(IMasterUow uow):base(uow) {}

    }
}
