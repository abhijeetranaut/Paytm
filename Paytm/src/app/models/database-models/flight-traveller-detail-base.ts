import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FlightTravellerDetailBase {

//#region flightTravellerId Prop
        @prop()
        flightTravellerId : number;
//#endregion flightTravellerId Prop


//#region flightBookingId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        flightBookingId : number;
//#endregion flightBookingId Prop


//#region firstName Prop
        @required()
        @maxLength({value:20})
        firstName : string;
//#endregion firstName Prop


//#region lastName Prop
        @required()
        @maxLength({value:20})
        lastName : string;
//#endregion lastName Prop


//#region age Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        age : number;
//#endregion age Prop


//#region emailId Prop
        @required()
        @maxLength({value:20})
        emailId : string;
//#endregion emailId Prop


//#region contactNumber Prop
        @required()
        @maxLength({value:15})
        contactNumber : string;
//#endregion contactNumber Prop



}