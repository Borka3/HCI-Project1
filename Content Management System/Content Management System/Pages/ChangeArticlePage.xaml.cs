using Content_Management_System.Classes;
using Content_Management_System.Helpers;
using Microsoft.Win32;
using Notification.Wpf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
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
using System.Xml.Serialization;

namespace Content_Management_System.Pages
{
    /// <summary>
    /// Interaction logic for ChangeArticlePage.xaml
    /// </summary>
    public partial class ChangeArticlePage : Page,INotifyPropertyChanged
    {
        public UserWindow userWindow = null;
        public ObservableCollection<Articles> Articles { get; set; }
        private string source;
       
        public event PropertyChangedEventHandler PropertyChanged;
        private Articles article;

        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public ChangeArticlePage()
        {
            InitializeComponent();
            

            foreach (Window window in Application.Current.Windows)
            {
                if (window is UserWindow)
                {
                    userWindow = (UserWindow)window;
                  
                    break;
                }
            }

        }

        public ChangeArticlePage(Articles articles)
        {
            InitializeComponent();
            FontFamilyComboBox.ItemsSource = Fonts.SystemFontFamilies.OrderBy(f => f.Source);
            FontSizeComboBox.ItemsSource = new ObservableCollection<double>() { 8, 9, 10, 11, 12, 14, 16, 18, 20, 22, 24, 26, 28, 36, 48, 72 };

            foreach (Window window in Application.Current.Windows)
            {
                if (window is UserWindow)
                {
                    userWindow = (UserWindow)window;
                    this.article = articles;
                    break;
                }
            }
            NumOfArticleTextBox.Text = articles.NumOfArticles.ToString();
            PathToTheFileTextBox.Text = articles.PathToTheFile.ToString();
            ImagePreview.Source = new BitmapImage(new Uri(articles.ImageOfArticle, UriKind.RelativeOrAbsolute));
            TypeOfArticleTextBox.Text = articles.TypeOfArticle.ToString();
       
            TextRange textRange = new TextRange(EditorRichTextBox.Document.ContentStart, EditorRichTextBox.Document.ContentEnd);
            using(FileStream fileStream = new FileStream("..\\" + articles.PathToTheFile,FileMode.Open))
            {
                textRange.Load(fileStream, DataFormats.Rtf);
            }

        }

        private bool Validate()
        {
            bool isValid = true;
            int num = 0;

            if (NumOfArticleTextBox.Text.Trim().Equals(string.Empty) || NumOfArticleTextBox.Text.Trim().Equals("Input number of article"))
            {
                isValid = false;
                NumErrorLabel.Content = "Form field cannot be empty!";
                NumOfArticleTextBox.BorderBrush = Brushes.Red;
            }
            else
            {
                if (!int.TryParse(NumOfArticleTextBox.Text.Trim(), out num))
                {
                    isValid = false;
                    NumErrorLabel.Content = "The number must be entered";
                    NumOfArticleTextBox.BorderBrush = Brushes.Red;
                }
                else
                {
                    NumErrorLabel.Content = string.Empty;
                    NumOfArticleTextBox.BorderBrush = Brushes.Gold;
                }

            }

            if (PathToTheFileTextBox.Text.Trim().Equals(string.Empty) || PathToTheFileTextBox.Text.Trim().Equals("Enter the path to the file"))
            {
                isValid = false;
                PathToTheFileTextBox.BorderBrush = Brushes.Red;
            }
            else
            {
                
                PathToTheFileTextBox.BorderBrush = Brushes.Gold;
            }
            
            if (ImagePreview.Source == null)
            {
                isValid = false;
                ImageButton.Foreground = Brushes.Red;
            }
            else
            {
                ImageButton.Foreground = Brushes.Gold;
            }

            if (TypeOfArticleTextBox.Text.Trim().Equals(string.Empty) || TypeOfArticleTextBox.Text.Trim().Equals("Input type of an article"))
            {
                isValid = false;
                TypeOfArticleErrorLabel.Content = "Form field cannot be empty!";
                TypeOfArticleTextBox.BorderBrush = Brushes.Red;
            }
            else
            {
                TypeOfArticleErrorLabel.Content = string.Empty;
                TypeOfArticleTextBox.BorderBrush = Brushes.Gold;
            }

            return isValid;
        }
        private void NumOfArticleTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (NumOfArticleTextBox.Text.Trim().Equals("Input number of article"))
            {
                NumOfArticleTextBox.Text = "";
                NumOfArticleTextBox.Foreground = Brushes.Goldenrod;
            }

        }
        private void NumOfArticleTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (NumOfArticleTextBox.Text.Trim().Equals(string.Empty))
            {
                NumOfArticleTextBox.Text = "Input number of article";
                NumOfArticleTextBox.Foreground = Brushes.Goldenrod;
            }
        }
        private void PathToTheFileTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (PathToTheFileTextBox.Text.Trim().Equals("Enter the path to the file"))
            {
                PathToTheFileTextBox.Text = "";
                PathToTheFileTextBox.Foreground = Brushes.Goldenrod;
            }
        }

        private void PathToTheFileTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (PathToTheFileTextBox.Text.Trim().Equals(string.Empty))
            {
                PathToTheFileTextBox.Text = "Enter the path to the file";
                PathToTheFileTextBox.Foreground = Brushes.Goldenrod;
            }
        }
        private void TypeOfArticleTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (TypeOfArticleTextBox.Text.Trim().Equals("Input type of an article"))
            {
                TypeOfArticleTextBox.Text = "";
                TypeOfArticleTextBox.Foreground = Brushes.Goldenrod;
            }
        }
        private void TypeOfArticleTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (TypeOfArticleTextBox.Text.Trim().Equals(string.Empty))
            {
                TypeOfArticleTextBox.Text = "Input type of an article";
                TypeOfArticleTextBox.Foreground = Brushes.Goldenrod;
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (this.NavigationService.CanGoBack)
            {
                this.NavigationService.GoBack();
            }
        }

        private void FontFamilyComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (FontFamilyComboBox.SelectedItem != null && !EditorRichTextBox.Selection.IsEmpty)
            {
                EditorRichTextBox.Selection.ApplyPropertyValue(Inline.FontFamilyProperty, FontFamilyComboBox.SelectedItem);
            }
        }

        private void FontSizeComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (FontSizeComboBox.SelectedItem != null)
            {
                EditorRichTextBox.Selection.ApplyPropertyValue(Inline.FontSizeProperty, FontSizeComboBox.SelectedItem);
            }
        }

        private void EditorRichTextBox_SelectionChanged(object sender, RoutedEventArgs e)
        {
            object font = EditorRichTextBox.Selection.GetPropertyValue(Inline.FontWeightProperty);
            BoldToggleButton.IsChecked = (font != DependencyProperty.UnsetValue) && (font.Equals(FontWeights.Bold));

            font = EditorRichTextBox.Selection.GetPropertyValue(Inline.FontStyleProperty);
            ItalicToggleButton.IsChecked = (font != DependencyProperty.UnsetValue) && (font.Equals(FontStyles.Italic));

            font = EditorRichTextBox.Selection.GetPropertyValue(Inline.TextDecorationsProperty);
            UnderlineToggleButton.IsChecked = (font != DependencyProperty.UnsetValue) && (font.Equals(TextDecorations.Underline));

            object fontFamily = EditorRichTextBox.Selection.GetPropertyValue(Inline.FontFamilyProperty);
            FontFamilyComboBox.SelectedItem = fontFamily;

            object fontSize = EditorRichTextBox.Selection.GetPropertyValue(Inline.FontSizeProperty);
            FontSizeComboBox.SelectedItem = fontSize;

            object fontColor = EditorRichTextBox.Selection.GetPropertyValue(Inline.ForegroundProperty);
            ColorPickerForeground.SelectedColor = ((SolidColorBrush)fontColor).Color;
        }

        private void EditorRichTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            int wordCount = 0;
            string text = new TextRange(EditorRichTextBox.Document.ContentStart, EditorRichTextBox.Document.ContentEnd).Text;
            string[] words = text.Split(new char[] { ' ', '\t', '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);
            wordCount = words.Length;
            wordCountTextBlock.Text = $"Number of words: {wordCount}";
        }

        private void ImageButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == true)
            {
                Uri uri = new Uri(openFileDialog.FileName);
                source = uri.ToString();
                ImagePreview.Source = new BitmapImage(uri);
            }
        }

        private void ColorPickerForeground_SelectedColorChanged(object sender, RoutedPropertyChangedEventArgs<Color?> e)
        {
            if (ColorPickerForeground.SelectedColor != null)
            {

                EditorRichTextBox.Selection.ApplyPropertyValue(TextElement.ForegroundProperty, new SolidColorBrush(ColorPickerForeground.SelectedColor.Value));
                Color selectedColor = ColorPickerForeground.SelectedColor.Value;
                string colorName = selectedColor.ToString();

            }
        }
        private void SaveRtf(string path)
        {
           
            using (FileStream myStream = new FileStream("..\\" + path, FileMode.OpenOrCreate, FileAccess.Write))
            {
                TextRange myRange = new TextRange(EditorRichTextBox.Document.ContentStart, EditorRichTextBox.Document.ContentEnd);
                myRange.Save(myStream, DataFormats.Rtf);
                myStream.Close();
            }
        }

        private void ChangeArticleButton_Click(object sender, RoutedEventArgs e)
        {
            if (Validate())
            {
                article.NumOfArticles = Convert.ToInt32(NumOfArticleTextBox.Text);
                article.TypeOfArticle = TypeOfArticleTextBox.Text;
                article.DateOfAddition = DateTime.Now;
                article.ImageOfArticle = ImagePreview.Source.ToString();
                article.Id = Convert.ToInt32(PathToTheFileTextBox.Text);
                SaveRtf(article.PathToTheFile);
                userWindow.ShowToastNotification(new ToastNotification("Success", "Successful change!", NotificationType.Success));
            }
            else
            {
                userWindow.ShowToastNotification(new ToastNotification("Error", "Form fields are not correctly filled", NotificationType.Error));
            }

        }

    }
}
