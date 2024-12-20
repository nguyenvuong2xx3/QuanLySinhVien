﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IDiemsvRepo
    {
        List<Diemsv> GetTopDiemsv();
        List<Diemsv> GetAllDiemsv();
        List<Diemsv> GetDiemsvByMasv(string masv);
        bool AddDiemsv(Diemsv diemsv);
        bool UpdateDiemsv(Diemsv diemsv);
        bool DeleteDiemsv(string masv, string mamh);
        Diemsv GetDiemsvById(string masv);
        Diemsv GetDiemsvByMonhoc(string name);
    }
}
