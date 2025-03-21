using Content_Management_System.Classes;
using Content_Management_System.Helpers;
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
using System.Windows.Shapes;
using Notification.Wpf;
using System.ComponentModel;
using System.Data;
using Content_Management_System.Pages;

namespace Content_Management_System
{
    /// <summary>
    /// Interaction logic for UserWindow.xaml
    /// </summary>
    public partial class UserWindow : Window
    {

        public  ObservableCollection<Articles> Articles { get; set; }
        private DataIO serializer = new DataIO();
        private NotificationManager notificationManager;
        MainWindow mainWindow;
        public bool IsAdmin;
        public bool pr { get; set; } = true;

        public DataTablePage dataTablePage { get; set; }
        
        
        public UserWindow()
        {
            InitializeComponent();
            notificationManager = new NotificationManager();
            
            Articles = serializer.DeSerializeObject<ObservableCollection<Articles>>("Articles.xml");
            if(Articles == null)
            {
                Articles = new ObservableCollection<Articles>();
            }
            dataTablePage = new DataTablePage();
            


        }

        public UserWindow(bool isadmin)
        {
            InitializeComponent();
            IsAdmin = isadmin;
            notificationManager = new NotificationManager();
           
            Articles = serializer.DeSerializeObject<ObservableCollection<Articles>>("Articles.xml");
            if (Articles == null)
            {
                Articles = new ObservableCollection<Articles>();
            }
            

        }


        private void SaveDataAsXml()
        {
            serializer.SerializeObject<ObservableCollection<Articles>>(Articles, "Articles.xml");
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MessageBoxResult messageBoxResult = MessageBox.Show("Are you sure you want to log out?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if(messageBoxResult == MessageBoxResult.Yes)
            {
                SaveDataAsXml();
            }
            else
            {
                e.Cancel = true;
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if(MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }

        }

        private void NavigateToPage(Page page)
        {
            MainFrame.Navigate(page);
        }

        private void NavigateToPage(string pageName)
        {
            String pageUri = "Pages/" + pageName + ".xaml";
            MainFrame.Navigate(new Uri(pageUri,UriKind.RelativeOrAbsolute));
        }

       
        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
            Application.Current.MainWindow.Show();
            
        }
        public void ShowToastNotification(ToastNotification toastNotification)
        {
            notificationManager.Show(toastNotification.Title, toastNotification.Message, toastNotification.Type, "WindowNotificationArea");
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }
    }
}
