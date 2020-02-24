import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vMovieBookBase {

//#region movieName Prop
        @gridColumn({visible: true, columnIndex:0, allowSorting: true, headerKey: 'movieName', keyColumn: false})
        movieName : string;
//#endregion movieName Prop


//#region hallNumber Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'hallNumber', keyColumn: true})
        hallNumber : number;
//#endregion hallNumber Prop


//#region theatreName Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'theatreName', keyColumn: false})
        theatreName : string;
//#endregion theatreName Prop


//#region theatreAddress Prop
        @gridColumn({visible: true, columnIndex:3, allowSorting: true, headerKey: 'theatreAddress', keyColumn: false})
        theatreAddress : string;
//#endregion theatreAddress Prop


//#region price Prop
        @gridColumn({visible: true, columnIndex:4, allowSorting: true, headerKey: 'price', keyColumn: false})
        price : number;
//#endregion price Prop


//#region showTime Prop
        @gridColumn({visible: true, columnIndex:5, allowSorting: true, headerKey: 'showTime', keyColumn: false})
        showTime : number;
//#endregion showTime Prop


//#region cityName Prop
        @gridColumn({visible: true, columnIndex:6, allowSorting: true, headerKey: 'cityName', keyColumn: false})
        cityName : string;
//#endregion cityName Prop


//#region userId Prop
        @gridColumn({visible: true, columnIndex:7, allowSorting: true, headerKey: 'userId', keyColumn: false})
        userId : number;
//#endregion userId Prop


//#region aplicationObjectName Prop
        @gridColumn({visible: true, columnIndex:8, allowSorting: true, headerKey: 'aplicationObjectName', keyColumn: false})
        aplicationObjectName : string;
//#endregion aplicationObjectName Prop


//#region bookedSeats Prop
        @gridColumn({visible: true, columnIndex:9, allowSorting: true, headerKey: 'bookedSeats', keyColumn: false})
        bookedSeats : number;
//#endregion bookedSeats Prop

}