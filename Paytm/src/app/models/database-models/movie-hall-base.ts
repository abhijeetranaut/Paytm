import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class MovieHallBase {

//#region movieHallId Prop
        @prop()
        movieHallId : number;
//#endregion movieHallId Prop


//#region hallId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        hallId : number;
//#endregion hallId Prop


//#region showTime Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        showTime : number;
//#endregion showTime Prop


//#region price Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        price : number;
//#endregion price Prop


//#region movieId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        movieId : number;
//#endregion movieId Prop







}