using RxWeb.Core.Data;
using Paytm.BoundedContext.Main;

namespace Paytm.UnitOfWork.Main
{
    public class FlightavailableSeatsUow : BaseUow, IFlightavailableSeatsUow
    {
        public FlightavailableSeatsUow(IFlightavailableSeatsContext context, IRepositoryProvider repositoryProvider) : base(context, repositoryProvider) { }
    }

    public interface IFlightavailableSeatsUow : ICoreUnitOfWork { }
}


