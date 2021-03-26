using System;
using System.Web.Mvc;
using System.Collections.Generic;

namespace Final.Models
{
     public class New
     {
          public int Id { get; set; }
          
          [AllowHtml]
          public string Title { get; set; }
          
          [AllowHtml]
          public string ShortDescription { get; set; }

          [AllowHtml]
          public string FullContent { get; set; }

          public string PicturePath { get; set; }
     }

     public class PageInfo
     {
          public int PageNumber { get; set; } // номер текущей страницы
          public int PageSize { get; set; } // кол-во объектов на странице
          public int TotalItems { get; set; } // всего объектов
          public int TotalPages  // всего страниц
          {
               get { return (int)Math.Ceiling((decimal)TotalItems / PageSize); }
          }
     }

     public class IndexViewModel
     {
          public IEnumerable<New> News { get; set; }
          public PageInfo PageInfo { get; set; }
     }
}