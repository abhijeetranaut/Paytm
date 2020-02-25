using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using RxWeb.Core.Security;
using RxWeb.Core.Data;
using Paytm.Models.ViewModels;
using Paytm.BoundedContext.SqlContext;
namespace Paytm.Api.Controllers.Module
{
    [ApiController]
	[Route("api/[controller]")]
    public class SearchBusController : ControllerBase
    {
        private IDbContextManager<MainSqlDbContext> DbContextManager { get; set; }
        public SearchBusController(IDbContextManager<MainSqlDbContext> dbContextManager) {
            DbContextManager = dbContextManager;
        }

		[HttpPost]
        public async Task<IActionResult> Post([FromBody]Dictionary<string,string> searchParams)
        {
            var spParameter = new SqlParameter[3];
            spParameter[0] = new SqlParameter() { ParameterName = "Source", Value = searchParams["Source"] };
            spParameter[1] = new SqlParameter() { ParameterName = "Destination", Value = searchParams["Destination"] };
            spParameter[2] = new SqlParameter() { ParameterName = "Date", Value = searchParams["Date"] };
            var result = await DbContextManager.StoreProc<StoreProcResult>("[dbo].spSearchBus", spParameter);
            return Ok(result.SingleOrDefault()?.Result);
        }
    }
}
