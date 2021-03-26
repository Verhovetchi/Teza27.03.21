using Final.Models;
using System.Linq;
using System.Web.Mvc;
using System.Web.Security;

namespace Final.Controllers
{
     public class AccountController : Controller
    {
          public ActionResult Login()
          {
               return View();
          }

          [HttpPost]
          [ValidateAntiForgeryToken]
          public ActionResult Login(LoginModel model)
          {
               if (ModelState.IsValid)
               {
                    // поиск пользователя в бд
                    User user = null;
                    using (UserContext db = new UserContext())
                    {
                         user = db.Users.FirstOrDefault(u => u.Email == model.Name && u.Password == model.Password);

                    }
                    if (user != null)
                    {
                         FormsAuthentication.SetAuthCookie(model.Name, true);
                         return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                         ModelState.AddModelError("", "User with this username and password doesn't exist");
                    }
               }

               return View(model);
          }

          public ActionResult Register()
          {
               return View();
          }
          [HttpPost]
          [ValidateAntiForgeryToken]
          public ActionResult Register(RegisterModel model)
          {
               if (ModelState.IsValid)
               {
                    User user = null;
                    using (UserContext db = new UserContext())
                    {
                         user = db.Users.FirstOrDefault(u => u.Email == model.Name);
                    }
                    if (user == null)
                    {
                         using (UserContext db = new UserContext())
                         {
                              db.Users.Add(new User { Email = model.Name, Password = model.Password, Age = model.Age });
                              db.SaveChanges();

                              user = db.Users.Where(u => u.Email == model.Name && u.Password == model.Password).FirstOrDefault();
                         }
                         if (user != null)
                         {
                              FormsAuthentication.SetAuthCookie(model.Name, true);
                              return RedirectToAction("Index", "Home");
                         }
                    }
                    else
                    {
                         ModelState.AddModelError("", "User with this username already exists!");
                    }
               }

               return View(model);
          }

          public ActionResult Logoff()
          {
               FormsAuthentication.SignOut();
               return RedirectToAction("Index", "Home");
          }
     }
}