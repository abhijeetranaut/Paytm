import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class UserDetailBase {

//#region userDetailId Prop
        @prop()
        userDetailId : number;
//#endregion userDetailId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop


//#region firstName Prop
        @required()
        @maxLength({value:20})
        firstName : string;
//#endregion firstName Prop


//#region lastName Prop
        @required()
        @maxLength({value:20})
        lastName : string;
//#endregion lastName Prop


//#region dateOfBirth Prop
        @required()
        dateOfBirth : Date;
//#endregion dateOfBirth Prop


//#region applicationObjectId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        applicationObjectId : number;
//#endregion applicationObjectId Prop



}