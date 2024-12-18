using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using Model;
using Repository;

namespace Main
{
    /// <summary>
    /// Interaction logic for WindowStudents.xaml
    /// </summary>
    public partial class WindowStudents : Window
    {
        private readonly ISinhvienRepo sinhvienRepo;
        public WindowStudents()
        {
            InitializeComponent();
            sinhvienRepo = new SinhvienRepo();
            var sinhvien = sinhvienRepo.GetAllSinhVien();
            dtg_Students.ItemsSource = sinhvien;
            string defaultClassCode = sinhvien.Select(x => x.Malp).Distinct().FirstOrDefault();

            cbx_Classcode.SelectedItem = defaultClassCode;
            //cbx_SearchClass.SelectedItem = defaultClassCode;
            cbx_Classcode.ItemsSource = sinhvien.Select(x => x.Malp).Distinct().ToList();
            //cbx_SearchClass.ItemsSource = sinhvien.Select(x => x.Malp).Distinct().ToList();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedClassCode = cbx_Classcode.SelectedItem.ToString();
                if (string.IsNullOrWhiteSpace(selectedClassCode) ||
                    string.IsNullOrWhiteSpace(txt_Code.Text) ||
                        string.IsNullOrWhiteSpace(txt_Name.Text) ||
                        string.IsNullOrWhiteSpace(txt_Address.Text))
                {
                    MessageBox.Show("không được để trống SOS!!!");
                    return;
                }
                if (sinhvienRepo.GetSinhvienById(txt_Code.Text) != null)
                {
                    MessageBox.Show("Student đã tồn tại trong hệ thống");
                    return;
                }
                if (!txt_Code.Text.Contains("SV"))
                {
                    MessageBox.Show("Mã sinh viên phải bắt đầu bằng SV");
                    return;
                }
                Sinhvien sinhvien = new Sinhvien()
                {
                    Masv = txt_Code.Text,
                    Tensv = txt_Name.Text,
                    Dcsv = txt_Address.Text,
                    Malp = selectedClassCode
                };
                bool isSuccessful = sinhvienRepo.AddSinhvien(sinhvien);
                if (isSuccessful)
                {
                    MessageBox.Show("Thêm sinh viên thành công");
                    dtg_Students.ItemsSource = sinhvienRepo.GetAllSinhVien();
                    return;
                }
                else
                {
                    MessageBox.Show("Thêm sinh viên thất bại");
                }
            }catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_Edit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txt_Code.Text))
                {
                    MessageBox.Show("Mã sinh viên không được để trống");
                    return;
                }
                if(string.IsNullOrWhiteSpace(txt_Name.Text) ||
                   string.IsNullOrWhiteSpace(txt_Address.Text))
                {
                    MessageBox.Show("Tên sinh viên và địa chỉ không được để trống");
                    return;
                }
                if (!txt_Code.Text.Contains("SV"))
                {
                    MessageBox.Show("Mã sinh viên phải bắt đầu bằng SV");
                    return;
                }
                string selectedClassCode = cbx_Classcode.SelectedItem.ToString();
                Sinhvien sinhvien = new Sinhvien()
                {
                    Masv = txt_Code.Text,
                    Tensv = txt_Name.Text,
                    Dcsv = txt_Address.Text,
                    Malp = selectedClassCode
                };
                bool isSuccessful = sinhvienRepo.UpdateSinhvien(sinhvien);
                if (isSuccessful)
                {
                    MessageBox.Show("Cập nhật sinh viên thành công");
                    dtg_Students.ItemsSource = sinhvienRepo.GetAllSinhVien();
                    return;
                }
                else
                {
                    MessageBox.Show("Cập nhật sinh viên thất bại");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_Delete_Click(object sender, RoutedEventArgs e)
        {
            string code = txt_Code.Text;

            var student = sinhvienRepo.GetSinhvienById(code);
            if (student == null)
            {
                MessageBox.Show("Student không tồn tại trong hệ thống.");
                return;
            }

            bool isSuccessful = sinhvienRepo.DeleteSinhvien(code);
            if (isSuccessful)
            {
                MessageBox.Show("Xóa sinh viên thành công");
                dtg_Students.ItemsSource = sinhvienRepo.GetAllSinhVien();
                return;
            }
            else
            {
                MessageBox.Show("Xóa sinh viên thất bại");
            }
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            AdminWindow adminWindow = new AdminWindow();
            adminWindow.Show();
            this.Close();
        }

        //private void btn_Search_Click(object sender, RoutedEventArgs e)
        //{
        //    try
        //    {
        //        string code = txt_Search.Text;
        //        if(string.IsNullOrWhiteSpace(code))
        //        {
        //            dtg_Students.ItemsSource = sinhvienRepo.GetAllSinhVien();
        //            return;
        //        }
        //        if(!sinhvienRepo.GetSinhvienByName(code).Equals(null))
        //        {
        //            dtg_Students.ItemsSource = sinhvienRepo.GetSinhvienByName(code);
        //            return;
        //        }
        //        MessageBox.Show("Student không tồn tại trong hệ thống");
        //    }
        //    catch(Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        //private void btn_SearchClass_Click(object sender, RoutedEventArgs e)
        //{
        //    try
        //    {
        //        string code = cbx_SearchClass.SelectedItem.ToString();
        //        if (string.IsNullOrEmpty(code))
        //        {
        //            dtg_Students.ItemsSource = sinhvienRepo.GetAllSinhVien();
        //            return;
        //        }
        //        if(!sinhvienRepo.GetSinhvienByLop(code).Equals(null))
        //        {
        //            dtg_Students.ItemsSource = sinhvienRepo.GetSinhvienByLop(code);
        //            return;
        //        }
        //        MessageBox.Show("Student không tồn tại trong hệ thống");
        //    }
        //    catch(Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}
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
                    if (item is Sinhvien lop)
                    {
                        return lop.Masv.Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase)
                               || lop.Tensv.Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase)
                               || lop.Malp.Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase)
                               || lop.Dcsv.Contains(txt_Search.Text, StringComparison.OrdinalIgnoreCase);
                    }

                    return false;
                };
            }
        }
        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            ApplyFilter();
        }
        private void dtg_Students_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
