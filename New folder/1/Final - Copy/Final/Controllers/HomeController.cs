using Final.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Entity.Migrations;
using System.Net.Mail;
using System.Net;

namespace Final.Controllers
{
     public class HomeController : Controller
     {
          PageContext pageContextDB = new PageContext();

          SoccerContext soccerDB = new SoccerContext();
          public ActionResult Index(int page = 1)
          {
               int pageSize = 5;
               IEnumerable<New> newsPerPages = pageContextDB.News.
                    OrderByDescending(x => x.Id).
                    Skip((page - 1) * pageSize).
                    Take(pageSize).ToList();

               PageInfo pageInfo = new PageInfo { PageNumber = page, PageSize = pageSize, TotalItems = pageContextDB.News.Count() };
               IndexViewModel ivm = new IndexViewModel { PageInfo = pageInfo, News = newsPerPages };

               return View(ivm);
          }

          public ActionResult Test()
          {
               return View();
          }

          public ActionResult Clasament()
          {
               return PartialView();
          }

          [Authorize]
          [HttpGet]
          public ActionResult SendEmail()
          {
               return View();
          }

          [HttpPost]
          public string SendEMail()
          {
               string from = Request["from"];
               string subject = Request["subject"];
               string body = Request["body"];
               

               using (MailMessage mail = new MailMessage())
               {
                    mail.From = new MailAddress("daniel.verhovetchi@ati.utm.md");
                    mail.To.Add("info_barca@mail.ru");
                    mail.Subject = subject;
                    mail.Body = $"<b>From:</b>{from}<br><b>Message:</b>{body}";
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtp = new SmtpClient("smtp.office365.com", 587))
                    {
                         smtp.Credentials = new NetworkCredential("daniel.verhovetchi@ati.utm.md", "1111Nuttertools.");
                         smtp.EnableSsl = true;
                         smtp.Send(mail);
                    }
               }

               return "<b style='color: green; font-size: 40px'>Message was sent successfull!!!<b>";
          }

          public ActionResult About()
          {
               return View();
          }

          public ActionResult Privacy()
          {
               return View();
          }

          public ActionResult Team(int id)
          {
               var players = soccerDB.Database.SqlQuery<Player>("SELECT * FROM Players where TeamId=" + id).OrderBy(i => i.Number);

               ViewBag.Players = players;

               return View();
          }

          public ActionResult Article(int id)
          {
               var article = pageContextDB.Database.SqlQuery<New>("SELECT * FROM News where Id=" + id);

               ViewBag.Article = article.ToList();

               return View();
          }

          public ActionResult Statistics(int id)
          {
               string path= "a";
               switch (id)
               {
                    case 1:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/276267/marcandre_ter_stegen.jpg";
                              break;
                         }
                    case 2:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/358372/sergino-dest.jpg";
                              break;
                         }
                    case 3:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/241949/gerard_pique.jpg";
                              break;
                         }
                    case 4:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/364283/ronald-araujo.jpg";
                              break;
                         }
                    case 5:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/312389/sergio_busquets.jpg";
                              break;
                         }
                    case 6:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/287113/miralem_pjanic.jpg";
                              break;
                         }
                    case 7:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/208981/antoine_griezmann.jpg";
                              break;
                         }
                    case 8:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/287113/miralem_pjanic.jpg";
                              break;
                         }
                    case 9:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/279811/martin_braithwaite.jpg";
                              break;
                         }
                    case 10:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/271592/lionel_messi.jpg";
                              break;
                         }
                    case 11:
                         {
                              path = "https://www.fctables.com/uploads/infographics/profil/296003/ousmane_dembele.jpg";
                              break;
                         }
               }

               ViewBag.Path = path;
               return View();
          }



          //public ActionResult Iniesta2()
          //{
          //     return View();
          //}

          /// <summary>
          [HttpGet]
          public ActionResult AllNews()
          {
               var news = pageContextDB.News;
               return View(news.ToList());
          }

          [HttpGet]
          public ActionResult CreateNew()
          {
               return View();
          }

          [HttpPost]
          public ActionResult CreateNew(New _new)
          {
               pageContextDB.News.Add(_new);
               pageContextDB.SaveChanges();
               return RedirectToAction("Index");
          }

          [HttpGet]
          public ActionResult DeleteNews(int id)
          {
               New p = pageContextDB.News.Find(id);

               if (p == null)
                    return HttpNotFound();

               return View(p);
          }

          public ActionResult DeleteNew(int id)
          {
               New p = pageContextDB.News.Find(id);

               if (p == null)
                    return HttpNotFound();

               pageContextDB.News.Remove(p);
               pageContextDB.SaveChanges();

               return RedirectToAction("Index");
          }

          [HttpGet]
          public ActionResult EditNew(int? id)
          {
               if (id == null)
                    return HttpNotFound();

               New news = pageContextDB.News.Find(id);

               if (news != null)
                    return View(news);

               return HttpNotFound();
          }

          [HttpPost, ActionName("EditNew")]
          public ActionResult EditNew(New news)
          {
               pageContextDB.Entry(news).State = EntityState.Modified;
               pageContextDB.SaveChanges();
               return RedirectToAction("Index");
          }
          /// </summary>
          /// <returns></returns>



          [HttpGet]
          public ActionResult AllPlayers()
          {
               var players = soccerDB.Players.Include(t => t.Team);
               return View(players.ToList());
          }

          [HttpGet]
          public ActionResult CreatePlayer()
          {
               SelectList teams = new SelectList(soccerDB.Teams, "Id", "Name");
               ViewBag.Teams = teams;

               return View();
          }

          [HttpPost]
          public ActionResult CreatePlayer(Player player)
          {
               soccerDB.Players.Add(player);
               soccerDB.SaveChanges();
               return RedirectToAction("Index");
          }

          [HttpGet]
          public ActionResult DeletePlayers(int id)
          {
               Player p = soccerDB.Players.Find(id);

               if (p == null)
                    return HttpNotFound();

               return View(p);
          }

          public ActionResult DeletePlayer(int id)
          {
               Player p = soccerDB.Players.Find(id);

               if (p == null)
                    return HttpNotFound();

               soccerDB.Players.Remove(p);
               soccerDB.SaveChanges();

               return RedirectToAction("Index");
          }

          [HttpGet]
          public ActionResult EditPlayer(int? id)
          {
               if (id == null)
                    return HttpNotFound();

               Player player = soccerDB.Players.Find(id);

               SelectList teams = new SelectList(soccerDB.Teams, "Id", "Name");
               ViewBag.Teams = teams;
               ViewBag.Position = new List<string>() { "Midfield", "Goalkeeper" };

               if (player != null)
                    return View(player);

               return HttpNotFound();
          }

          [HttpPost, ActionName("EditPlayer")]
          public ActionResult EditPlayer(Player player)
          {
               soccerDB.Entry(player).State = EntityState.Modified;
               soccerDB.SaveChanges();
               return RedirectToAction("Index");
          }

          //[HttpPost]
          //public ActionResult CreatePlayer(Player player)
          //{
          //     soccerDB.Players.Add(player);
          //     soccerDB.SaveChanges();
          //     return View();
          //}

          //SoccerContext db2 = new SoccerContext();

          //public ActionResult Index2()
          //{
          //     var teams = db2.Teams.Include(t => t.picture);

          //     return View(teams.ToList());
          //}

          //protected override void Dispose(bool disposing)
          //{
          //     db.Dispose();
          //     base.Dispose(disposing);
          //}
     }
}