using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ScoresStudent
    {
        public string Masv { get; set; }
        public string? Tensv { get; set; }
        public string Mamh { get; set; }
        public string Tenmh { get; set; }
        public double? Diem { get; set; }

        //private float _diem;
        //public float Diem
        //{
        //    get { return _diem; }
        //    set
        //    {
        //        _diem = (float)value;
        //        FormattedDiem = value.ToString("N2"); // Định dạng giá trị khi giá trị Diem thay đổi
        //    }
        //}
        //public string FormattedDiem { get; private set; }
    }
}
