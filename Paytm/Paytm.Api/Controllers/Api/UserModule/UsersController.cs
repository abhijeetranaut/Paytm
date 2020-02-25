using Microsoft.AspNetCore.Mvc;
using System.Linq;
using Paytm.Domain.UserModule;
using Paytm.Models.Main;
using RxWeb.Core.AspNetCore;
using RxWeb.Core.Security.Authorization;

namespace Paytm.Api.Controllers.UserModule
{
    [ApiController]
    [Route("api/[controller]")]
	
	public class UsersController : BaseDomainController<User,User>

    {
        public UsersController(IUserDomain domain):base(domain) {}

    }
}
