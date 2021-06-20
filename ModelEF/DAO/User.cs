using ModelEF.EF;
using System;
using PagedList;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class User
    {
        private QuyThoDB db;

        public User()
        {
            db = new QuyThoDB();
        }

        public int login(string user, string pass)
        { 
            var result = db.UserAcount.SingleOrDefault(x => x.UserName==user);
            if(result == null)
            {
                return 0;
            }
            else
            {
                if(result.Status == "Blocked")
                {
                    return -1;
                }
                else
                {
                    if (result.Password == pass)
                        return 1;
                    else
                        return -2;
                }
            }
        }

        public string Insert(UserAcount entityAccount)
        {
            var user = GetById(entityAccount.UserName);
            if (user == null)
            {
                db.UserAcount.Add(entityAccount);
            }
            else
            {
                user.UserName = entityAccount.UserName;
                if (!String.IsNullOrEmpty(entityAccount.Password))
                {
                    user.Password = entityAccount.Password;
                }
                if (!String.IsNullOrEmpty(entityAccount.Status))
                {
                    user.Status = entityAccount.Status;
                }
            }
            db.SaveChanges();
            return entityAccount.UserName;
        }
        public UserAcount GetById(string userName)
        {
            return db.UserAcount.SingleOrDefault(x => x.UserName == userName);
        }
        public List<UserAcount> ListAll()
        {
            return db.UserAcount.ToList();
        }

        public IEnumerable<UserAcount> ListWhereAll(string keysearch, int page, int pagesize)
        {
            IQueryable<UserAcount> model = db.UserAcount;
            if (!string.IsNullOrEmpty(keysearch))
            {
                model = model.Where(x => x.UserName.Contains(keysearch));
            }
            return model.OrderBy(x => x.UserName).ToPagedList(page, pagesize);
        }

        public bool Delete(int id)
        {
            try
            {
                var user = db.UserAcount.Find(id);
                db.UserAcount.Remove(user);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

    }
}
