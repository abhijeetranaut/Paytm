import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class OrderBase {

//#region orderId Prop
        @prop()
        orderId : number;
//#endregion orderId Prop


//#region cartId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        cartId : number;
//#endregion cartId Prop


//#region deliveryAddressId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        deliveryAddressId : number;
//#endregion deliveryAddressId Prop





}