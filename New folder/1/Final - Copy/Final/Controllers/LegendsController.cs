using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Final.Controllers
{
    public class LegendsController : Controller
    {
          public ActionResult Index()
          {
               return View();
          }

          public ActionResult Iniesta()
          {

               List<string> championships = new List<string>
               {
                    "Primera 2016/17", "Spanish national team 2016/17", "Super Cup Spain 2016/17", "Champions League 2016/17", "Super Cup Spain 2016", "Primera 2017/18",
                    "Cup of Spain 2017/18", "Champions League 2017/18", "Champions League 2010/11", "Champions League 2011/12", "Champions League 2012/13",
                    "Champios League 2013/14", "Champions League 2014/15", "Champios League 2015/16", "Primera 2010/11", "Primera 2011/12", "Primera 2012/13",
                    "Primera 2013/14", "Primera 2014/15", "Primera 2015/16", "Cup of Spain 2010/11", "Cup of Spain 2011/12", "Cup of Spain 2012/13", "Cup of Spain 2013/14",
                    "Cup of Spain 2014/15", "Cup of Spain 2015/16", "Super Cup UEFA 2010/11", "Super Cup UEFA 2010/11", "Super Cup UEFA 2011/12", "Super Cup UEFA 2012/13",
                    "Super Cup UEFA 2014/15", "Super Cup UEFA 2014/15", "Super Cup UEFA 2015/16"
               };

               int[,] goals = new int[, ]
               {
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 1, 61, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 25, 1868, 5, 22, 2, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
               };

               List<string> data = new List<string>()
               {
                    "23.08.2015 19:00", "10.08.2016 15:00", "26.08.2017", "09.09.2017", "16.09.2017", "19.09.2017", "23.09.2017", "01.10.2017", "14.10.2017", "21.10.2017", "04.11.2017",
                    "18.11.2017 18:00", "26.11.2017 23:00", "02.12.2017 15:00", "17.12.2017 22:45", "23.12.2017 15:00", "07.01.2018 18:15", "28.01.2018 22:45", "04.02.2018", "11.02.2018 18:15",
                    "17.02.2018 18:15", "01.03.2018 23:00", "04.03.2018 18:15", "18.03.2018", "01.04.2018 21:45", "08.04.2018 21:45", "15.04.2018 17:15", "29.04.2018 21:45", "06.05.2018 21:45",
                    "09.05.2018 21:00", "13.05.2018", "20.05.2018 21:45"
               };

               string barca = "Barcelona";
               List<string> home = new List<string>()
               {
                    "Athletic B.", barca, "Alaves", barca, "Getafe", barca, "Girona", barca, "Atletico M.", barca, barca, "Leganes", "Valencia", barca, barca, "Real M.",
                    barca, barca, "Espanyol", barca, "Eibar", "Las-Palmas", barca, barca, "Sevilla", barca, barca, "Deportivo", barca, barca, "Levante", barca
               };

               string barcelona = "https://barcaman.ru/media/bearleague/thumb/bl15179076121892.png";
               List<string> homeImg = new List<string>()
               {
                    "https://barcaman.ru/media/bearleague/thumb/bl1518073327572.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15989473232201.png", barcelona,
                    "https://barcaman.ru/media/bearleague/thumb/bl15191138671778.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15191136872945.png", barcelona,
                    "https://barcaman.ru/media/bearleague/thumb/bl1518904685548.png", barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180744431967.png",
                    "https://barcaman.ru/media/bearleague/thumb/bl1518073727964.png", barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180728922180.png",
                    barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180734951627.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180736422944.png",
                    "https://barcaman.ru/media/bearleague/thumb/bl15180738681616.gif", barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180731071907.png",
                    barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180740452047.png", barcelona, barcelona,
                    "https://barcaman.ru/media/bearleague/thumb/bl1519113398934.png", barcelona

               };

               List<string> score = new List<string>()
               {
                    "0 - 1", "3 - 2", "0 - 2", "5 - 0", "1 - 2", "6 - 1", "0 - 3", "3 - 0", "1 - 1", "2 - 0", "2 - 1", "0 - 3", "1 - 1", "2 - 2", "4 - 0", "0 - 3",
                    "3 - 0", "2 - 1", "1 - 1", "0 - 0", "0 - 2", "1 - 1", "1 - 0", "2 - 0", "2 - 2", "3 - 1", "2 - 1", "2 - 4", "2 - 2", "5 - 1", "5 - 4", "1 - 0"
               };

               List<string> awayImg = new List<string>()
               {
                    barcelona, "https://barcaman.ru/media/bearleague/thumb/bl1519112357628.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180734951627.png",
                    barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180736422944.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180738681616.gif",
                    barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15904822572967.png", "https://barcaman.ru/media/bearleague/thumb/bl15180731071907.png",
                    barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl1518073801482.png", "https://barcaman.ru/media/bearleague/thumb/bl15180740452047.png",
                    barcelona, "https://barcaman.ru/media/bearleague/thumb/bl1519113398934.png", "https://barcaman.ru/media/bearleague/thumb/bl15989473232201.png", barcelona,
                    "https://barcaman.ru/media/bearleague/thumb/bl15191138671778.png", barcelona, barcelona, "https://barcaman.ru/media/bearleague/thumb/bl1518904685548.png",
                    "https://barcaman.ru/media/bearleague/thumb/bl1518073327572.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180744431967.png",
                    "https://barcaman.ru/media/bearleague/thumb/bl1518073727964.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180728922180.png",
                    "https://barcaman.ru/media/bearleague/thumb/bl15181234812337.png", barcelona, "https://barcaman.ru/media/bearleague/thumb/bl15180732281489.png"
               };

               List<string> efective = new List<string>()
               {
                    "", "", "", "", "", "", "", "", "", "https://barcaman.ru/media/bearleague/thumb/Soccer_GOAL_50x50.png", "", "",
                    "", "", "", "", "", "https://barcaman.ru/media/bearleague/thumb/Soccer_assisten_color_100x100.png", "", "",
                    "https://barcaman.ru/media/bearleague/thumb/Soccer_YELLOW_CARD_3.png", "", "", "", "", "", "", "", "",
                    "https://barcaman.ru/media/bearleague/thumb/Soccer_assisten_color_100x100.png", "", ""
               };

               List<string> away = new List<string>()
               {
                    barca, "Samptdoria", barca, "Espanyol", barca, "Eibar", barca, "Las-Palmas", barca, "Malaga", "Sevilla", barca, barca, "Celta", "Deportivo", barca, "Levante",
                    "Alaves", barca, "Getafe", barca, barca, "Atletico M.", "Athletico B.", barca, "Leganes", "Valencia", barca, "Real M.", "Villareal", barca, "Real S."
               };

               List<int> minutes = new List<int>() { 93, 61, 88, 77, 46, 63, 80, 44, 61, 93, 60, 59, 72, 53, 56, 77, 76, 93, 93, 31, 63, 75, 36, 28, 81, 12, 84, 6, 58, 61, 60, 82 };


               ViewBag.Data = data.ToList();
               ViewBag.Home = home.ToList();
               ViewBag.HomeImg = homeImg.ToList();
               ViewBag.Score = score.ToList();
               ViewBag.AwayImg = awayImg.ToList();
               ViewBag.AwayImg = awayImg.ToList();
               ViewBag.Away = away.ToList();
               ViewBag.Efective = efective.ToList();
               ViewBag.Minutes = minutes.ToList();
               ViewBag.Championships = championships.ToList();
               ViewBag.Goals = goals;

               return View();
          }

          public ActionResult Valdes()
          {
               List<string> championships = new List<string>
               {
                    "Champions League 2010/11", "Champions League 2011/12", "Champions League 2012/13", "Champions League 2013/14", "Primera 2010/11", "Primera 2011/12", "Primera 2012/13", "Primera 2013/14",
                    "Cup of Spain 2010/11", "Cup of Spain 2011/12", "Cup of Spain 2012/13", "Cup of Spain 2013/14", "Super Cup UEFA 2010/11", "Super Cup Spain 2010/11", "Super Cup Spain 2011/12", 
                    "Super Cup Spain 2012/13"
               };

               int[,] goals = new int[,]
               {
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
               };

               ViewBag.Championships = championships.ToList();
               ViewBag.Goals = goals;

               return View();
          }

          public ActionResult Maradona()
          {

               return View();
          }
     }
}