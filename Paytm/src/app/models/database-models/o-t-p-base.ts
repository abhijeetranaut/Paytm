import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class OTPBase {

//#region oTPId Prop
        @prop()
        oTPId : number;
//#endregion oTPId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop


//#region otpNumber Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        otpNumber : number;
//#endregion otpNumber Prop


//#region activateTime Prop
        @required()
        activateTime : Date;
//#endregion activateTime Prop


//#region deactivateTime Prop
        @required()
        deactivateTime : Date;
//#endregion deactivateTime Prop



}