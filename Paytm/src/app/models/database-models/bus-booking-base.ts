import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class BusBookingBase {

//#region busBookingId Prop
        @prop()
        busBookingId : number;
//#endregion busBookingId Prop


//#region bookingMasterId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        bookingMasterId : number;
//#endregion bookingMasterId Prop


//#region busId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        busId : number;
//#endregion busId Prop







}