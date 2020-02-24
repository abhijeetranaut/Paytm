import {FashionProductBase} from '../database-models/fashion-product-base';
import {FashionSubCategoryBase} from '../database-models/fashion-sub-category-base';
import {SellerProductBase} from '../database-models/seller-product-base';
import {CartBase} from '../database-models/cart-base';
//Generated Imports
export class FashionProduct extends FashionProductBase 
{




//#region Generated Reference Properties
//#region fashionSubCategory Prop
        fashionSubCategory : FashionSubCategoryBase;
//#endregion fashionSubCategory Prop

//#region sellerProduct Prop
        sellerProduct : SellerProductBase;
//#endregion sellerProduct Prop

//#region carts Prop
        carts : CartBase[];
//#endregion carts Prop

//#endregion Generated Reference Properties
}