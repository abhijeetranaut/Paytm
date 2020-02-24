import {FlightBookingBase} from '../database-models/flight-booking-base';
import {BookingMasterBase} from '../database-models/booking-master-base';
import {FlightBase} from '../database-models/flight-base';
import {FlightTravellerDetailBase} from '../database-models/flight-traveller-detail-base';
//Generated Imports
export class FlightBooking extends FlightBookingBase 
{




//#region Generated Reference Properties
//#region bookingMaster Prop
        bookingMaster : BookingMasterBase;
//#endregion bookingMaster Prop

//#region flight Prop
        flight : FlightBase;
//#endregion flight Prop

//#region flightTravellerDetails Prop
        flightTravellerDetails : FlightTravellerDetailBase[];
//#endregion flightTravellerDetails Prop

//#endregion Generated Reference Properties
}