import {CartBase} from '../database-models/cart-base';
import {FashionProductBase} from '../database-models/fashion-product-base';
import {UserBase} from '../database-models/user-base';
import {OrderBase} from '../database-models/order-base';
//Generated Imports
export class Cart extends CartBase 
{




//#region Generated Reference Properties
//#region fashionProduct Prop
        fashionProduct : FashionProductBase;
//#endregion fashionProduct Prop

//#region user Prop
        user : UserBase;
//#endregion user Prop

//#region orders Prop
        orders : OrderBase[];
//#endregion orders Prop

//#endregion Generated Reference Properties
}