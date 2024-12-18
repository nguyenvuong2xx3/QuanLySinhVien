using System.Windows;
using System.Windows.Input;
using Model;
using Repository;

namespace Main
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class Login : Window
    {
        private readonly IAccountRepo accountRepo = null;
        public Login()
        {
            InitializeComponent();
            accountRepo = new AccountRepo();
        }

        private void btn_Login_Click(object sender, RoutedEventArgs e)
        {
            Account account = accountRepo.GetAccountByEmail(txt_Email.Text.Trim());
            if (account != null)
            {
                if (account.Password == txt_Password.Password)
                {
                    User.MaSv = account.Masv;
                    User.Role = account.Role;
                    string role = User.Role;
                    if (role == "Admin")
                    {
                        AdminWindow adminWindow = new AdminWindow();
                        adminWindow.Show();
                        this.Close();
                    }else if(role == "Teacher")
                    {
                        TeacherWindow teacherWindow = new TeacherWindow();
                        teacherWindow.Show();
                        this.Close();
                    }
                    else if (role == "Student")
                    {
                        StudentWindow studentWindow = new StudentWindow();
                        studentWindow.Show();
                        this.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Password is incorrect");
                }
            }
            else
            {
                MessageBox.Show("Email is not exist");
            }
        }

        private void btn_Register_Click(object sender, RoutedEventArgs e)
        {
            WindowRegister windowRegister = new WindowRegister();
            windowRegister.Show();
            this.Close();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}