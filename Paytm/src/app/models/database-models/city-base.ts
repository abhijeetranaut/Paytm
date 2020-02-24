import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class CityBase {

//#region cityId Prop
        @prop()
        cityId : number;
//#endregion cityId Prop


//#region cityName Prop
        @required()
        @maxLength({value:20})
        cityName : string;
//#endregion cityName Prop


//#region stateId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        stateId : number;
//#endregion stateId Prop





}