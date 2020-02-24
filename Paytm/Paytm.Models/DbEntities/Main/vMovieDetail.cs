using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using Paytm.BoundedContext.SqlContext;
namespace Paytm.Models.Main
{
    [Table("vMovieDetails",Schema="dbo")]
    public partial class vMovieDetail
    {

        public string MovieName { get; set; }


        public string CityName { get; set; }


        public string TheatreName { get; set; }


        public string TheatreAddress { get; set; }

		#region ShowTime Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion ShowTime Annotations

        public int ShowTime { get; set; }


        public int Price { get; set; }


        public string AplicationObjectName { get; set; }


        public int MovieId { get; set; }


        public int AvailableSeats { get; set; }


        public vMovieDetail()
        {
        }
	}
}