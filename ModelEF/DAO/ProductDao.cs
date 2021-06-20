using ModelEF.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class ProductDao
    {
        private QuyThoDB db;

        public ProductDao()
        {
            db = new QuyThoDB();
        }
        public List<Product> ListAll()
        {
            return db.Product.OrderByDescending(x => x.UnitCost).ToList();
        }
        public IEnumerable<Product> ListWhereAll(string keysearch, int page, int pagesize)
        {
            IQueryable<Product> model = db.Product;
            if (!string.IsNullOrEmpty(keysearch))
            {
                model = model.Where(x => x.Name.Contains(keysearch));
            }
            return model.OrderBy(x => x.Name).ToPagedList(page, pagesize);
        }
        public Product GetById(string name)
        {
            return db.Product.SingleOrDefault(x => x.Name == name);
        }

        public string Insert(Product entity)
        {
            var prd = GetById(entity.Name);
            if (prd == null)
            {
                db.Product.Add(entity);
            }
            else
            {
                prd.ID = entity.ID;
                if (!String.IsNullOrEmpty(entity.Name))
                {
                    prd.Name = entity.Name;
                }
                prd.UnitCost = entity.UnitCost;
                prd.Quantity = entity.Quantity;
                prd.Description = entity.Description;
                prd.Status = entity.Status;
                prd.Image = entity.Image;
                prd.Category_ID = entity.Category_ID;
            }
            db.SaveChanges();
            return entity.Name;
        }

        public bool Delete(int id)
        {
            try
            {
                var pro = db.Category.Find(id);
                db.Category.Remove(pro);
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
