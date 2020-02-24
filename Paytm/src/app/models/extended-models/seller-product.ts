import {SellerProductBase} from '../database-models/seller-product-base';
import {BrandBase} from '../database-models/brand-base';
import {SellerBase} from '../database-models/seller-base';
import {FashionProductBase} from '../database-models/fashion-product-base';
//Generated Imports
export class SellerProduct extends SellerProductBase 
{




//#region Generated Reference Properties
//#region brand Prop
        brand : BrandBase;
//#endregion brand Prop

//#region seller Prop
        seller : SellerBase;
//#endregion seller Prop

//#region fashionProducts Prop
        fashionProducts : FashionProductBase[];
//#endregion fashionProducts Prop

//#endregion Generated Reference Properties
}