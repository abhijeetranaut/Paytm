using RxWeb.Core.Data;
using Paytm.BoundedContext.Main;

namespace Paytm.UnitOfWork.Main
{
    public class BookingMasterUow : BaseUow, IBookingMasterUow
    {
        public BookingMasterUow(IBookingMasterContext context, IRepositoryProvider repositoryProvider) : base(context, repositoryProvider) { }
    }

    public interface IBookingMasterUow : ICoreUnitOfWork { }
}


