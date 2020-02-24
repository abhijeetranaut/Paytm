import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class MovieBase {

//#region movieId Prop
        @prop()
        movieId : number;
//#endregion movieId Prop


//#region movieName Prop
        @required()
        @maxLength({value:30})
        movieName : string;
//#endregion movieName Prop


//#region cityId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        cityId : number;
//#endregion cityId Prop





}