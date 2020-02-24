import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class SellerBase {

//#region sellerId Prop
        @prop()
        sellerId : number;
//#endregion sellerId Prop


//#region sellerName Prop
        @required()
        @maxLength({value:20})
        sellerName : string;
//#endregion sellerName Prop


//#region password Prop
        @required()
        @maxLength({value:20})
        password : string;
//#endregion password Prop


//#region mobileNumber Prop
        @required()
        @maxLength({value:15})
        mobileNumber : string;
//#endregion mobileNumber Prop


//#region emailId Prop
        @required()
        @maxLength({value:20})
        emailId : string;
//#endregion emailId Prop


//#region address Prop
        @required()
        @maxLength({value:30})
        address : string;
//#endregion address Prop



}