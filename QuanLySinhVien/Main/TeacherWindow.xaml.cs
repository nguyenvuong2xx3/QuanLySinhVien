﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Model;
using Repository;

namespace Main
{
    /// <summary>
    /// Interaction logic for TeacherWindow.xaml
    /// </summary>
    public partial class TeacherWindow : Window
    {
        private readonly ILopRepo lopRepo = null;
        private readonly IAccountRepo accountRepo = null;
        public TeacherWindow()
        {
            InitializeComponent();
            lopRepo = new LopRepo();
            accountRepo = new AccountRepo();
            dtg_Students.ItemsSource = lopRepo.GetAllLop();
            var lop = lopRepo.GetAllLop();
            string defaultClassCode = lop.Select(x => x.Malp).Distinct().FirstOrDefault();
            //cbx_SearchClass.SelectedItem = defaultClassCode;
            //cbx_SearchClass.ItemsSource = lop.Select(x => x.Malp).Distinct().ToList();
            //ApplyFilter();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txt_ClassId.Text) ||
                    string.IsNullOrWhiteSpace(txt_ClassName.Text) ||
                    string.IsNullOrWhiteSpace(txt_SchoolYear.Text))
                {
                    MessageBox.Show("không được để trống SOS!!!");
                    return;
                }
                if (lopRepo.GetLopById(txt_ClassId.Text) != null)
                {
                    MessageBox.Show("Lớp đã tồn tại trong hệ thống");
                    return;
                }
                if (!txt_ClassId.Text.Contains("LP"))
                {
                    MessageBox.Show("Mã lớp phải bắt đầu bằng LP");
                    return;
                }
                if (!txt_ClassName.Text.Contains("K"))
                {
                    MessageBox.Show("Mã lớp phải bắt đầu bằng K");
                    return;
                }
                int? schoolYear = null;
                if (!string.IsNullOrEmpty(txt_SchoolYear.Text) && int.TryParse(txt_SchoolYear.Text, out int parsedSchoolYear))
                {
                    schoolYear = parsedSchoolYear;
                }

                Lop lop = new Lop
                {
                    Malp = txt_ClassId.Text,
                    Tenlp = txt_ClassName.Text,
                    Nk = schoolYear
                };
                lopRepo.AddLop(lop);
                MessageBox.Show("Thêm lớp thành công");
                dtg_Students.ItemsSource = lopRepo.GetAllLop();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_Edit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txt_ClassId.Text) ||
                                       string.IsNullOrWhiteSpace(txt_ClassName.Text) ||
                                                          string.IsNullOrWhiteSpace(txt_SchoolYear.Text))
                {
                    MessageBox.Show("không được để trống SOS!!!");
                    return;
                }
                if (lopRepo.GetLopById(txt_ClassId.Text) == null)
                {
                    MessageBox.Show("Lớp không tồn tại trong hệ thống");
                    return;
                }
                if (!txt_ClassId.Text.Contains("L"))
                {
                    MessageBox.Show("Mã lớp phải bắt đầu bằng L");
                    return;
                }
                int? schoolYear = null;
                if (!string.IsNullOrEmpty(txt_SchoolYear.Text) && int.TryParse(txt_SchoolYear.Text, out int parsedSchoolYear))
                {
                    schoolYear = parsedSchoolYear;
                }

                Lop lop = new Lop
                {
                    Malp = txt_ClassId.Text,
                    Tenlp = txt_ClassName.Text,
                    Nk = schoolYear
                };
                bool isSuccessful = lopRepo.UpdateLop(lop);
                if (isSuccessful)
                {
                    MessageBox.Show("Cập nhật lớp thành công");
                    dtg_Students.ItemsSource = lopRepo.GetAllLop();
                    return;
                }
                else
                {
                    MessageBox.Show("Cập nhật lớp thất bại");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_Delete_Click(object sender, RoutedEventArgs e)
        {
            if(User.Role == "Teacher")
            {
                MessageBox.Show("Bạn không có quyền xóa lớp");
                return;
            }
            else
            {
                string id = txt_ClassId.Text;
                if (lopRepo.GetLopById(id) == null)
                {
                    MessageBox.Show("Lớp không tồn tại trong hệ thống");
                    return;
                }
                bool isSuccessful = lopRepo.DeleteLop(id);
                if (isSuccessful)
                {
                    MessageBox.Show("Xóa lớp thành công");
                    dtg_Students.ItemsSource = lopRepo.GetAllLop();
                    return;
                }
                else
                {
                    MessageBox.Show("Xóa lớp thất bại");
                }
            }
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            //var account = accountRepo.GetAccountByRole(User.Role);
            if(User.Role == "Admin")
            {
                AdminWindow adminWindow = new AdminWindow();
                adminWindow.Show();
                this.Close();
            }
            else if(User.Role == "Teacher")
            {
                Login login = new Login();
                login.Show();
                this.Close();
            }
        }

        private void dtg_Students_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }


        //private void btn_SearchClass_Click(object sender, RoutedEventArgs e)
        //{
        //    try
        //    {
        //        if (cbx_SearchClass.Text == "")
        //        {
        //            dtg_Students.ItemsSource = lopRepo.GetAllLop();
        //            return;
        //        }
        //        else
        //        {
        //            dtg_Students.ItemsSource = lopRepo.SearchLopById(cbx_SearchClass.SelectedValue.ToString());
        //            return;
        //        }
        //        MessageBox.Show("Student không tồn tại trong hệ thống");
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}
        private void DetailButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedRow = (Lop)dtg_Students.SelectedItem;
            if (selectedRow != null)
            {
                LopDetail lopDetail = new LopDetail();
                lopDetail.SetClassID(selectedRow.Malp);

                // Hiển thị cửa sổ
                lopDetail.Show();
            }
            else
            {
                // Thông báo người dùng về việc chưa chọn dòng nào
                MessageBox.Show("Vui lòng chọn một lớp để xem chi tiết.");
            }
        }

        private void ApplyFilter()
        {
            ICollectionView collectionView = CollectionViewSource.GetDefaultView(dtg_Students.ItemsSource);

            if (collectionView != null)
            {
                // Áp dụng bộ lọc dựa trên nội dung của TextBox
                collectionView.Filter = item =>
                {
                    if (string.IsNullOrWhiteSpace(txt_Search.Text))
                        return true; // Nếu TextBox trống, hiển thị tất cả

                    // Điều kiện tìm kiếm, thay đổi thành điều kiện tương ứng với cấu trúc dữ liệu của bạn
                    if (item is Lop lop)
                    {
                        return lop.Malp.Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase)
                               || lop.Tenlp.Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase)
                               || lop.Nk.ToString().Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase);
                    }

                    return false;
                };
            }
        }
        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            ApplyFilter();
        }
    }
}
