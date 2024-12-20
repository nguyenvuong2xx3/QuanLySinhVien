﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface ILopRepo
    {
        List<Lop> GetAllLop();
        Lop GetLopById(string malop);
        bool AddLop(Lop lop);
        bool UpdateLop(Lop lop);
        bool DeleteLop(string malop);
        List<Lop> SearchLopByName(string name);
        List<Lop> SearchLopById(string id);
    }
}
