import {MovieHallBase} from '../database-models/movie-hall-base';
import {HallBase} from '../database-models/hall-base';
import {MovieBase} from '../database-models/movie-base';
import {MovieBookingBase} from '../database-models/movie-booking-base';
//Generated Imports
export class MovieHall extends MovieHallBase 
{




//#region Generated Reference Properties
//#region hall Prop
        hall : HallBase;
//#endregion hall Prop

//#region movie Prop
        movie : MovieBase;
//#endregion movie Prop

//#region movieBookings Prop
        movieBookings : MovieBookingBase[];
//#endregion movieBookings Prop

//#endregion Generated Reference Properties
}