using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using RxWeb.Core;
using Paytm.UnitOfWork.Main;
using Paytm.Models.Main;

namespace Paytm.Domain.MasterModule
{
    public class FlightavailableSeatDomain : IFlightavailableSeatDomain
    {
        public FlightavailableSeatDomain(IMasterUow uow) {
            this.Uow = uow;
        }

        public Task<object> GetAsync( parameters)
        {
            throw new NotImplementedException();
        }

        public Task<object> GetBy( parameters)
        {
            throw new NotImplementedException();
        }
        

        public HashSet<string> AddValidation(FlightAvailableSeat entity)
        {
            return ValidationMessages;
        }

        public async Task AddAsync(FlightAvailableSeat entity)
        {
            await Uow.RegisterNewAsync(entity);
            await Uow.CommitAsync();
        }

        public HashSet<string> UpdateValidation(FlightAvailableSeat entity)
        {
            return ValidationMessages;
        }

        public async Task UpdateAsync(FlightAvailableSeat entity)
        {
            await Uow.RegisterDirtyAsync(entity);
            await Uow.CommitAsync();
        }

        public HashSet<string> DeleteValidation(FlightAvailableSeat entity)
        {
            return ValidationMessages;
        }

        public Task DeleteAsync(FlightAvailableSeat entity)
        {
            throw new NotImplementedException();
        }

        public IMasterUow Uow { get; set; }

        private HashSet<string> ValidationMessages { get; set; } = new HashSet<string>();
    }

    public interface IFlightavailableSeatDomain : ICoreDomain<FlightAvailableSeat, FlightAvailableSeat> { }
}
