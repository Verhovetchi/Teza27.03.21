using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final.Models
{
     public class Player
     {
          public int Id { get; set; }
          public string Name { get; set; }
          public string Surname { get; set; }
          public DateTime Born_Date { get; set; }
          public string Position { get; set; }
          public int Height { get; set; }
          public int Weight { get; set; }
          public int Number { get; set; }

          public int TeamId { get; set; }
          public Team Team { get; set; }

          public string Age(DateTime born_date)
          {
               born_date = Born_Date;
               DateTime now = DateTime.Now;

               int year = now.Year - born_date.Year;
               int month = now.Month - born_date.Month;
               int day = now.Day - born_date.Day;

               if ((month > 0) || (month == 0 && day >= 0))
                    return year.ToString();
               else
               {
                    year--;
                    return year.ToString();
               }
          }
     }
}