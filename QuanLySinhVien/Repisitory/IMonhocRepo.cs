﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IMonhocRepo
    {
        List<Monhoc> GetAllMonhoc();
        Monhoc GetMonhocById(string mamh);
        bool AddMonhoc(Monhoc monhoc);
        bool UpdateMonhoc(Monhoc monhoc);
        bool DeleteMonhoc(string mamh);
        Monhoc GetMonhocByName(string tenmh);
        public List<Sinhvien> GetStudentsInMonHoc(string monHocId);
    }
}
