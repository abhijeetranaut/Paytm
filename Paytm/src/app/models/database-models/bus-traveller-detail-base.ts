import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class BusTravellerDetailBase {

//#region busTravellerId Prop
        @prop()
        busTravellerId : number;
//#endregion busTravellerId Prop


//#region busBookingId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        busBookingId : number;
//#endregion busBookingId Prop


//#region fullName Prop
        @required()
        @maxLength({value:40})
        fullName : string;
//#endregion fullName Prop


//#region gender Prop
        @required()
        gender : boolean;
//#endregion gender Prop


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



}