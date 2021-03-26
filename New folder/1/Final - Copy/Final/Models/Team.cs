using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace Final.Models
{
     public class Team
     {
          public int Id { get; set; }
          public int ImageId { get; set; }
          public string Name { get; set; }
          public int Matches { get; set; }
          public int Wins { get; set; }
          public int Draws { get; set; }
          public int Loses { get; set; }
          public int Goals_scored { get; set; }
          public int Goals_received { get; set; }
          public int Points { get; set; }
          public Image Image { get; set; }

          public string Golaverage(int Goals_Scored, int Goals_received)
          {
               Goals_received = this.Goals_received;
               Goals_scored= this.Goals_scored;

               int result = Goals_scored - Goals_received;

               return result.ToString();
          }
     }
}