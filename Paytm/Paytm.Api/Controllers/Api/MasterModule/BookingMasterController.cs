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
	
	public class BookingMasterController : BaseController<BookingMaster,BookingMaster,BookingMaster>

    {
        public BookingMasterController(IMasterUow uow):base(uow) {}

    }
}
