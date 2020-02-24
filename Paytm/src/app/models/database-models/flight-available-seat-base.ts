import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FlightAvailableSeatBase {

//#region flightAvailableSeatId Prop
        @prop()
        flightAvailableSeatId : number;
//#endregion flightAvailableSeatId Prop


//#region flightId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        flightId : number;
//#endregion flightId Prop


//#region totalSeats Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        totalSeats : number;
//#endregion totalSeats Prop


//#region economyTotal Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        economyTotal : number;
//#endregion economyTotal Prop


//#region economyAvailable Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        economyAvailable : number;
//#endregion economyAvailable Prop


//#region businessTotal Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        businessTotal : number;
//#endregion businessTotal Prop


//#region businessAvailable Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        businessAvailable : number;
//#endregion businessAvailable Prop



}