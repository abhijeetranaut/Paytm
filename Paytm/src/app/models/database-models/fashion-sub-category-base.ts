import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FashionSubCategoryBase {

//#region fashionSubCategoryId Prop
        @prop()
        fashionSubCategoryId : number;
//#endregion fashionSubCategoryId Prop


//#region fashionCategoryName Prop
        @required()
        @maxLength({value:20})
        fashionCategoryName : string;
//#endregion fashionCategoryName Prop


//#region fashionCategoryId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        fashionCategoryId : number;
//#endregion fashionCategoryId Prop





}