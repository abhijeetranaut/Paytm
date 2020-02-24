import {BusBookingBase} from '../database-models/bus-booking-base';
import {BookingMasterBase} from '../database-models/booking-master-base';
import {BusBase} from '../database-models/bus-base';
import {BusTravellerDetailBase} from '../database-models/bus-traveller-detail-base';
//Generated Imports
export class BusBooking extends BusBookingBase 
{




//#region Generated Reference Properties
//#region bookingMaster Prop
        bookingMaster : BookingMasterBase;
//#endregion bookingMaster Prop

//#region bus Prop
        bus : BusBase;
//#endregion bus Prop

//#region busTravellerDetails Prop
        busTravellerDetails : BusTravellerDetailBase[];
//#endregion busTravellerDetails Prop

//#endregion Generated Reference Properties
}