using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using Paytm.BoundedContext.SqlContext;
namespace Paytm.Models.Main
{
    [Table("vCartItems",Schema="dbo")]
    public partial class vCartItem
    {
		#region Quantity Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion Quantity Annotations

        public int Quantity { get; set; }


        public double TotalAmount { get; set; }


        public int UserId { get; set; }


        public string FashionCategoryName { get; set; }


        public double Price { get; set; }


        public string Description { get; set; }


        public int BrandId { get; set; }


        public string ProductName { get; set; }


        public string SellerName { get; set; }


        public vCartItem()
        {
        }
	}
}