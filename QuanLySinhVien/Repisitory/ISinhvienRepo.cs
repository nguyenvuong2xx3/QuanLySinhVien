using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface ISinhvienRepo
    {
        public bool AddSinhvien(Sinhvien sv);

        public bool DeleteSinhvien(string id);

        public IEnumerable<TopSinhVien> GetStudentsWithAveragePoints(IEnumerable<Sinhvien> students, IEnumerable<Diemsv> subjects, string classIdToCheck);

        public List<Sinhvien> GetAllSinhVien();

        public Sinhvien GetSinhvienById(string id);

        public List<Sinhvien> GetSinhvienByLop(string malop);

        public List<Sinhvien> GetSinhvienByName(string name);

        public bool UpdateSinhvien(Sinhvien sv);

    }
}
