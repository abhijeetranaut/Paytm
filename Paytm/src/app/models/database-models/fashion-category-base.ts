import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class FashionCategoryBase {

//#region fashionCategoryId Prop
        @prop()
        fashionCategoryId : number;
//#endregion fashionCategoryId Prop


//#region fashionCategoryName Prop
        @required()
        @maxLength({value:20})
        fashionCategoryName : string;
//#endregion fashionCategoryName Prop



}