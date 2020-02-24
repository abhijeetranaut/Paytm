import {UserBase} from '../database-models/user-base';
import {ApplicationUserTokenBase} from '../database-models/application-user-token-base';
import {UserRoleBase} from '../database-models/user-role-base';
import {CartBase} from '../database-models/cart-base';
import {MovieBookingBase} from '../database-models/movie-booking-base';
import {BookingMasterBase} from '../database-models/booking-master-base';
import {DeliveryAddressBase} from '../database-models/delivery-address-base';
import {KycDetailBase} from '../database-models/kyc-detail-base';
import {OTPBase} from '../database-models/o-t-p-base';
import {RechargeBase} from '../database-models/recharge-base';
import {TransactionBase} from '../database-models/transaction-base';
import {UserDetailBase} from '../database-models/user-detail-base';
import {WalletBase} from '../database-models/wallet-base';
//Generated Imports
export class User extends UserBase 
{




//#region Generated Reference Properties
//#region applicationUserTokens Prop
        applicationUserTokens : ApplicationUserTokenBase[];
//#endregion applicationUserTokens Prop

//#region userRoles Prop
        userRoles : UserRoleBase[];
//#endregion userRoles Prop

//#region carts Prop
        carts : CartBase[];
//#endregion carts Prop

//#region movieBookings Prop
        movieBookings : MovieBookingBase[];
//#endregion movieBookings Prop

//#region bookingMasters Prop
        bookingMasters : BookingMasterBase[];
//#endregion bookingMasters Prop

//#region deliveryAddresses Prop
        deliveryAddresses : DeliveryAddressBase[];
//#endregion deliveryAddresses Prop

//#region kycDetails Prop
        kycDetails : KycDetailBase[];
//#endregion kycDetails Prop

//#region oTPs Prop
        oTPs : OTPBase[];
//#endregion oTPs Prop

//#region recharges Prop
        recharges : RechargeBase[];
//#endregion recharges Prop

//#region transactions Prop
        transactions : TransactionBase[];
//#endregion transactions Prop

//#region userDetails Prop
        userDetails : UserDetailBase[];
//#endregion userDetails Prop

//#region wallets Prop
        wallets : WalletBase[];
//#endregion wallets Prop

//#endregion Generated Reference Properties
}