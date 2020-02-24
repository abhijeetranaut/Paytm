import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FashionProductBase {

//#region fashionProductId Prop
        @prop()
        fashionProductId : number;
//#endregion fashionProductId Prop


//#region fashionSubCategoryId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        fashionSubCategoryId : number;
//#endregion fashionSubCategoryId Prop


//#region sellerProductId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        sellerProductId : number;
//#endregion sellerProductId Prop







}