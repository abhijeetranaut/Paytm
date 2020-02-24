import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vCartItemBase {

//#region quantity Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'quantity', keyColumn: true})
        quantity : number;
//#endregion quantity Prop


//#region totalAmount Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'totalAmount', keyColumn: false})
        totalAmount : any;
//#endregion totalAmount Prop


//#region userId Prop
        @gridColumn({visible: true, columnIndex:3, allowSorting: true, headerKey: 'userId', keyColumn: false})
        userId : number;
//#endregion userId Prop


//#region fashionCategoryName Prop
        @gridColumn({visible: true, columnIndex:4, allowSorting: true, headerKey: 'fashionCategoryName', keyColumn: false})
        fashionCategoryName : string;
//#endregion fashionCategoryName Prop


//#region price Prop
        @gridColumn({visible: true, columnIndex:5, allowSorting: true, headerKey: 'price', keyColumn: false})
        price : any;
//#endregion price Prop


//#region description Prop
        @gridColumn({visible: true, columnIndex:6, allowSorting: true, headerKey: 'description', keyColumn: false})
        description : string;
//#endregion description Prop


//#region brandId Prop
        @gridColumn({visible: true, columnIndex:7, allowSorting: true, headerKey: 'brandId', keyColumn: false})
        brandId : number;
//#endregion brandId Prop


//#region productName Prop
        @gridColumn({visible: true, columnIndex:8, allowSorting: true, headerKey: 'productName', keyColumn: false})
        productName : string;
//#endregion productName Prop


//#region sellerName Prop
        @gridColumn({visible: true, columnIndex:9, allowSorting: true, headerKey: 'sellerName', keyColumn: false})
        sellerName : string;
//#endregion sellerName Prop

}