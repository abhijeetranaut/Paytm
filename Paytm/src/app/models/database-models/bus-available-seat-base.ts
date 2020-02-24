import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class BusAvailableSeatBase {

//#region busAvailableSeatId Prop
        @prop()
        busAvailableSeatId : number;
//#endregion busAvailableSeatId Prop


//#region busId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        busId : number;
//#endregion busId Prop


//#region totalSeats Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        totalSeats : number;
//#endregion totalSeats Prop


//#region availableSeats Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        availableSeats : number;
//#endregion availableSeats Prop



}