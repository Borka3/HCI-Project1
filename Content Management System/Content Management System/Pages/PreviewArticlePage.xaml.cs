using Content_Management_System.Classes;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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

namespace Content_Management_System.Pages
{
    /// <summary>
    /// Interaction logic for PreviewArticlePage.xaml
    /// </summary>
    public partial class PreviewArticlePage : Page
    {
        public UserWindow userWindow = null;
        
        public PreviewArticlePage()
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

        public PreviewArticlePage(Articles articles)
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

           
            imgPreview.Source = new BitmapImage(new Uri(articles.ImageOfArticle, UriKind.RelativeOrAbsolute));
            string preview = $"Number of article: {articles.NumOfArticles}\n\nPath to the file: {articles.PathToTheFile}\n\nType of an article: {articles.TypeOfArticle}";
            Paragraph paragraph = new Paragraph(new Run(preview));
            paragraph.FontSize = 15.0;
            

            using (FileStream fileStream = new FileStream("..\\" + articles.PathToTheFile, FileMode.Open))
            {
                TextRange textRange = new TextRange(PreviewRichTextBox.Document.ContentStart, PreviewRichTextBox.Document.ContentEnd);
                textRange.Load(fileStream, DataFormats.Rtf);
                PreviewRichTextBox.Document.Blocks.InsertBefore(PreviewRichTextBox.Document.Blocks.FirstBlock, paragraph);
            }  

        }
    }
}
