import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class StateBase {

//#region stateId Prop
        @prop()
        stateId : number;
//#endregion stateId Prop


//#region stateName Prop
        @required()
        @maxLength({value:15})
        stateName : string;
//#endregion stateName Prop



}