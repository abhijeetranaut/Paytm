using RxWeb.Core.Data;
using Paytm.BoundedContext.Main;

namespace Paytm.UnitOfWork.Main
{
    public class FlightUow : BaseUow, IFlightUow
    {
        public FlightUow(IFlightContext context, IRepositoryProvider repositoryProvider) : base(context, repositoryProvider) { }
    }

    public interface IFlightUow : ICoreUnitOfWork { }
}


