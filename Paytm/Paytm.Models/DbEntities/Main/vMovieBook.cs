using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using Paytm.BoundedContext.SqlContext;
namespace Paytm.Models.Main
{
    [Table("vMovieBook",Schema="dbo")]
    public partial class vMovieBook
    {

        public string MovieName { get; set; }

		#region HallNumber Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion HallNumber Annotations

        public int HallNumber { get; set; }


        public string TheatreName { get; set; }


        public string TheatreAddress { get; set; }


        public int Price { get; set; }


        public int ShowTime { get; set; }


        public string CityName { get; set; }


        public int UserId { get; set; }


        public string AplicationObjectName { get; set; }


        public int BookedSeats { get; set; }


        public vMovieBook()
        {
        }
	}
}