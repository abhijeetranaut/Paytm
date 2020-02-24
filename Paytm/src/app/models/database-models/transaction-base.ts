import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class TransactionBase {

//#region transactionId Prop
        @prop()
        transactionId : number;
//#endregion transactionId Prop


//#region applicationObjectId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        applicationObjectId : number;
//#endregion applicationObjectId Prop


//#region transactionDate Prop
        @required()
        transactionDate : Date;
//#endregion transactionDate Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop


//#region receiverId Prop
        @required()
        @maxLength({value:10})
        receiverId : string;
//#endregion receiverId Prop





}