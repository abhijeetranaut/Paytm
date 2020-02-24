import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class MovieBookingBase {

//#region movieBookingId Prop
        @prop()
        movieBookingId : number;
//#endregion movieBookingId Prop


//#region applicationObjectId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        applicationObjectId : number;
//#endregion applicationObjectId Prop


//#region movieHallId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        movieHallId : number;
//#endregion movieHallId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop


//#region bookedSeats Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        bookedSeats : number;
//#endregion bookedSeats Prop





}