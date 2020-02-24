import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class BusBase {

//#region busId Prop
        @prop()
        busId : number;
//#endregion busId Prop


//#region busName Prop
        @required()
        @maxLength({value:20})
        busName : string;
//#endregion busName Prop


//#region source Prop
        @required()
        @maxLength({value:20})
        source : string;
//#endregion source Prop


//#region destination Prop
        @required()
        @maxLength({value:20})
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
        @required()
        duration : any;
//#endregion duration Prop


//#region applicationObjectId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        applicationObjectId : number;
//#endregion applicationObjectId Prop





}