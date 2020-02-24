import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class HallBase {

//#region hallId Prop
        @prop()
        hallId : number;
//#endregion hallId Prop


//#region hallNumber Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        hallNumber : number;
//#endregion hallNumber Prop


//#region theatreId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        theatreId : number;
//#endregion theatreId Prop


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