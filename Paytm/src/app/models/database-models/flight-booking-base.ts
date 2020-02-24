import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FlightBookingBase {

//#region flightBookingId Prop
        @prop()
        flightBookingId : number;
//#endregion flightBookingId Prop


//#region bookingMasterId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        bookingMasterId : number;
//#endregion bookingMasterId Prop


//#region flightId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        flightId : number;
//#endregion flightId Prop


//#region applicationObjectId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        applicationObjectId : number;
//#endregion applicationObjectId Prop







}