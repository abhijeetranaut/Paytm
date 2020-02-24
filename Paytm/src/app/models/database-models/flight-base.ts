import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FlightBase {

//#region flightId Prop
        @prop()
        flightId : number;
//#endregion flightId Prop


//#region airline Prop
        @required()
        @maxLength({value:15})
        airline : string;
//#endregion airline Prop


//#region source Prop
        @required()
        @maxLength({value:15})
        source : string;
//#endregion source Prop


//#region destination Prop
        @required()
        @maxLength({value:15})
        destination : string;
//#endregion destination Prop


//#region departureTime Prop
        @required()
        departureTime : Date;
//#endregion departureTime Prop


//#region arrivalTime Prop
        @required()
        arrivalTime : Date;
//#endregion arrivalTime Prop


//#region price Prop
        @required()
        price : any;
//#endregion price Prop


//#region duration Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        duration : number;
//#endregion duration Prop


//#region dayOfFlight Prop
        @required()
        @maxLength({value:20})
        dayOfFlight : string;
//#endregion dayOfFlight Prop





}