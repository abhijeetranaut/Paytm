import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class KycDetailBase {

//#region kycDetailId Prop
        @prop()
        kycDetailId : number;
//#endregion kycDetailId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop


//#region aadharNumber Prop
        @required()
        aadharNumber : any;
//#endregion aadharNumber Prop


//#region aadharAddress Prop
        @required()
        @maxLength({value:50})
        aadharAddress : string;
//#endregion aadharAddress Prop


//#region aadharName Prop
        @required()
        @maxLength({value:20})
        aadharName : string;
//#endregion aadharName Prop



}