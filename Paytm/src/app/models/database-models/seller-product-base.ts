import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class SellerProductBase {

//#region sellerProductId Prop
        @prop()
        sellerProductId : number;
//#endregion sellerProductId Prop


//#region productName Prop
        @required()
        @maxLength({value:20})
        productName : string;
//#endregion productName Prop


//#region sellerId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        sellerId : number;
//#endregion sellerId Prop


//#region fashionCategoryId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        fashionCategoryId : number;
//#endregion fashionCategoryId Prop


//#region price Prop
        @required()
        price : any;
//#endregion price Prop


//#region description Prop
        @required()
        @maxLength({value:50})
        description : string;
//#endregion description Prop


//#region brandId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        brandId : number;
//#endregion brandId Prop







}