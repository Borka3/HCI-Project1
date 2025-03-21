using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
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
using Content_Management_System.Classes;
using Content_Management_System.Helpers;
using Notification.Wpf;
using System.IO;
using Content_Management_System.Pages;



namespace Content_Management_System
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        User userAdmin = new User("admin", "admin123", UserRole.Admin);
        User userVisitor = new User("visitor", "visitor123", UserRole.Visitor);

        private NotificationManager notificationManager;

        private DataIO serializer = new DataIO();
        public List<User> Users;
        string provera = "";
        
        public MainWindow()
        {
            InitializeComponent();
            UserNameTextBox.Text = "Input username";
            UserNameTextBox.Foreground = Brushes.Gold;
            notificationManager = new NotificationManager(); 
            

            PasswordTextBox.Password = "Input password";
            PasswordTextBox.Foreground = Brushes.Gold;
            
            Users = serializer.DeSerializeObject<List<User>>("UserAccount.xml");
            if(Users == null)
            {
                Users = new List<User>();
            }
            
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }
        private void UserNameTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (UserNameTextBox.Text.Trim().Equals("Input username"))
            {
                UserNameTextBox.Text = "";
                UserNameTextBox.Foreground = Brushes.Black;
            }
        }

        private void UserNameTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (UserNameTextBox.Text.Trim().Equals(string.Empty))
            {
                UserNameTextBox.Text = "Input username";
                UserNameTextBox.Foreground = Brushes.Goldenrod;
            }
        }
        private void PasswordTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (PasswordTextBox.Password.Trim().Equals("Input password"))
            {
                PasswordTextBox.Password = "";
                PasswordTextBox.Foreground = Brushes.Black;
            }
        }

        private void PasswordTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (PasswordTextBox.Password.Trim().Equals(string.Empty))
            {
                PasswordTextBox.Password = "Input password";
                PasswordTextBox.Foreground = Brushes.Goldenrod;
            }
        }
        
        private void LogInButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = (MainWindow)Application.Current.MainWindow;
            if (ValidateFormData())
            {
                if (provera.Equals("Admin"))
                {
                    UserWindow userWindow = new UserWindow(true);
                    userWindow.Show();
                    this.Hide();
                    
                }
                else if (provera.Equals("Visitor"))
                {
                    UserWindow userWindow = new UserWindow(false);
                    userWindow.Show();
                    this.Hide();
                }
            }
            
        }
        
        private bool ValidateFormData()
        {
            bool isValid = true;
            bool isUserValid = false;
            MainWindow mainWindow = (MainWindow)Application.Current.MainWindow;

            foreach (User user in this.Users)
            {

                if (UserNameTextBox.Text.Trim().Equals(string.Empty) || UserNameTextBox.Text.Trim().Equals("Input username"))
                {
                       isValid = false;
                       UserNameErrorLabel.Content = "Cannot be empty!";
                       UserNameTextBox.BorderBrush = Brushes.Red;
                }
                else if(PasswordTextBox.Password.Trim().Equals(string.Empty) || PasswordTextBox.Password.Trim().Equals("Input password"))
                {
                    isValid = false;
                    PasswordErrorLabel.Content = "Cannot be empty!";
                    PasswordTextBox.BorderBrush = Brushes.Red;
                }
                else 
                {
                    if(UserNameTextBox.Text.Trim().Equals(user.UserName) && PasswordTextBox.Password.Trim().Equals(user.Password))
                    {
                        UserNameErrorLabel.Content = string.Empty;
                        UserNameTextBox.BorderBrush = Brushes.Goldenrod;
                        PasswordErrorLabel.Content = string.Empty;
                        PasswordTextBox.BorderBrush = Brushes.Goldenrod;
                        provera = user.Role.ToString();
                        isUserValid = true;
                        break;
                    }
                    else
                    {

                        if(string.IsNullOrEmpty(user.UserName))
                        {
                            UserNameErrorLabel.Content = "Invalid username.";
                            UserNameTextBox.BorderBrush = Brushes.Red;
                        }else if(string.IsNullOrEmpty(user.Password))
                        {
                            PasswordErrorLabel.Content = "Invalid password.";
                            PasswordTextBox.BorderBrush = Brushes.Red;
                        }

                    }
                }

            }

            if(!isUserValid)
            {
                mainWindow.ShowToastNotification(new ToastNotification("Error", "Invalid username or password", NotificationType.Error));
            }

            return isValid;
            
        }
        private void SaveDataAsXml()
        {
            Users.Add(userAdmin);
            Users.Add(userVisitor);
            serializer.SerializeObject<List<User>>(Users, "UserAccount.xml");
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MessageBoxResult messageBoxResult = MessageBox.Show("Are you sure you want to exit ? ", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.Yes)
            {
                SaveDataAsXml();
            }
            else
            {
                e.Cancel = true; 
            }

        }
        public void ShowToastNotification(ToastNotification toastNotification)
        {
            notificationManager.Show(toastNotification.Title, toastNotification.Message, toastNotification.Type, "WindowNotificationArea");
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
