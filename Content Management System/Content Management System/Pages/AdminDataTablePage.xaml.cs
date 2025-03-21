using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
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


namespace Content_Management_System.Pages
{
    /// <summary>
    /// Interaction logic for DataTablePage.xaml
    /// </summary>
    public partial class DataTablePage : Page
    {
        public ObservableCollection<Articles> Articles { get; set; }
       
        UserWindow userWindow;
        public bool IsAdmin;
        ChangeArticlePage c = new ChangeArticlePage();
        
        
       
        public DataTablePage() 
        {
            InitializeComponent();
       

            foreach (Window window in Application.Current.Windows)
            {
                if (window is UserWindow)
                {
                    userWindow = (UserWindow)window;
                    Articles = userWindow.Articles;
                    IsAdmin = userWindow.IsAdmin;       
                    break;
                }
            }            
            DataContext = this;
            if (IsAdmin == false)
            {
                AddArticleButton.Visibility = Visibility.Hidden;
                RemoveArticleButton.Visibility = Visibility.Hidden;
                
            }
            if (userWindow.pr)
            {
                if (IsAdmin)
                {
                    userWindow.ShowToastNotification(new ToastNotification("Success", "Success login as a admin!", NotificationType.Success));
                }
                else
                {
                    userWindow.ShowToastNotification(new ToastNotification("Success", "Success login as a visitor!", NotificationType.Success));
                }
                userWindow.pr = false;
            }

        }


        private void AddArticleButton_Click(object sender, RoutedEventArgs e)
        {
            
            this.NavigationService.Navigate(new Uri("Pages/AddArticlePage.xaml", UriKind.RelativeOrAbsolute));
        }

        private void RemoveArticleButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (Articles.Count > 0)
                {

                    foreach (Articles a in Articles)
                    {
                        if (a.IsCheck)
                        {
                            Articles.Remove(a);
                            if(File.Exists("..\\" + a.PathToTheFile))
                            {
                                File.Delete("..\\" + a.PathToTheFile);
                            }
                            userWindow.ShowToastNotification(new ToastNotification("Success", "Success delete an article!", NotificationType.Success));
                        }
                    }
                    

                }
                else
                {
                    userWindow.ShowToastNotification(new ToastNotification("Error", "Cannot delete from empty table!", NotificationType.Error));
                }
            }catch(Exception ex) { }
        }
        

        private void TextBlock_MouseLeftButtonDown(object sender, RoutedEventArgs e)
        {
            DependencyObject d = sender as TextBlock;
            while(!(d is DataGridRow))
            {
                 d = VisualTreeHelper.GetParent(d);

            }
            Articles articles = (Articles)((DataGridRow)d).DataContext;
            if(!IsAdmin)
            {
                this.NavigationService.Navigate(new PreviewArticlePage(articles));
                return;
            }
            this.NavigationService.Navigate(new ChangeArticlePage(articles));
        }

       
    }
}
