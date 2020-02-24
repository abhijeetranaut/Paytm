import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class BankBase {

//#region bankId Prop
        @prop()
        bankId : number;
//#endregion bankId Prop


//#region bankName Prop
        @required()
        @maxLength({value:20})
        bankName : string;
//#endregion bankName Prop


//#region bankAddress Prop
        @required()
        @maxLength({value:50})
        bankAddress : string;
//#endregion bankAddress Prop


//#region bankMobileNumber Prop
        @required()
        @maxLength({value:20})
        bankMobileNumber : string;
//#endregion bankMobileNumber Prop



}