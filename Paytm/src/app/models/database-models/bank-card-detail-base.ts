import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class BankCardDetailBase {

//#region bankCardDetailId Prop
        @prop()
        bankCardDetailId : number;
//#endregion bankCardDetailId Prop


//#region bankId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        bankId : number;
//#endregion bankId Prop


//#region cardNumber Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        cardNumber : number;
//#endregion cardNumber Prop


//#region cardName Prop
        @required()
        @maxLength({value:20})
        cardName : string;
//#endregion cardName Prop


//#region cardCVV Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        cardCVV : number;
//#endregion cardCVV Prop


//#region cardType Prop
        @required()
        @maxLength({value:10})
        cardType : string;
//#endregion cardType Prop


//#region cardExpiryDate Prop
        @required()
        cardExpiryDate : Date;
//#endregion cardExpiryDate Prop


//#region balance Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        balance : number;
//#endregion balance Prop



}