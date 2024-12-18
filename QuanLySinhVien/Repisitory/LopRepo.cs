using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Model;

namespace Repository
{
    public class LopRepo : ILopRepo
    {
        private readonly QLSVContext _db = null;
        private static LopRepo instance = null;

        public static LopRepo Instance
        {
            get
            {
                if (instance == null)
                {
                    return new LopRepo();
                }
                return instance;
            }
        }
        public LopRepo()
        {
            _db = new QLSVContext();
        }
        public List<Lop> GetAllLop()
        {
            try
            {
                return _db.Lops.ToList();
            }
            catch (Exception)
            {
                return null;
            }
        }
        public Lop GetLopById(string id)
        {
            return _db.Lops.SingleOrDefault(c => c.Malp.Equals(id));
        }
        public bool AddLop(Lop lop)
        {
            bool result = false;
            try
            {
                _db.Add(lop);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception)
            {
                return result;
            }
            return result;
        }
        public bool UpdateLop(Lop lop)
        {
            bool result = false;
            try
            {
                _db.Update(lop);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception)
            {
                return result;
            }
            return result;
        }
        public bool DeleteLop(string id)
        {
            bool result = false;
            try
            {
                var lop = _db.Lops.Find(id);
                if (lop == null)
                {
                    return false; // Không tìm thấy đối tượng
                }

                _db.Lops.Remove(lop); // Sử dụng Lops.Remove thay vì _db.Remove
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                // Ghi log hoặc hiển thị thông báo lỗi chi tiết
                Console.WriteLine(ex.Message);
            }
            return result;
        }

        public List<Lop> SearchLopByName(string name) 
        {
            return _db.Lops.Where(x => x.Tenlp.Contains(name)).ToList();
        }
        public List<Lop> SearchLopById(string id)
        {
            return _db.Lops.Where(x => x.Malp.Contains(id)).ToList();
        }
    }
}
