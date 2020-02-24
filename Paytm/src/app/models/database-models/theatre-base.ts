import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class TheatreBase {

//#region theatreId Prop
        @prop()
        theatreId : number;
//#endregion theatreId Prop


//#region theatreName Prop
        @required()
        @maxLength({value:20})
        theatreName : string;
//#endregion theatreName Prop


//#region theatreAddress Prop
        @required()
        @maxLength({value:50})
        theatreAddress : string;
//#endregion theatreAddress Prop



}