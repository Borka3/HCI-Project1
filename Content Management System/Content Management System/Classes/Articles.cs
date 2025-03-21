using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace Content_Management_System.Classes
{
    [Serializable]
    public class Articles
    {
        private int id;
        private int numOfArticles;
        private string imageOfArticle;
        private string pathToTheFile;
        private DateTime dateOfAddition;
        private string typeOfArticle;
        private bool isCheck;
        public int NumOfArticles
        {
            get { return numOfArticles; }
            set { numOfArticles = value; }
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public bool IsCheck
        {
            get
            {
                return isCheck;
            }
            set
            {
                isCheck = value;
            }
        }
        
        public string ImageOfArticle
        {
            get { return imageOfArticle; }
            set { imageOfArticle = value; }
        }

    
        public string PathToTheFile
        {
            get { return pathToTheFile; }
            set {  pathToTheFile = value; }
        }
        public DateTime DateOfAddition
        {
            get { return dateOfAddition; }
            set { dateOfAddition = value; }
        }

        public string TypeOfArticle
        {
            get { return typeOfArticle; }
            set { typeOfArticle = value; }
        }
        public Articles() { }

        public Articles(int numOfArticles, string imageOfArticle, int id, DateTime dateOfAddition,string typeOfArticle)
        {
            this.numOfArticles = numOfArticles;
            this.imageOfArticle = imageOfArticle;
            this.id = id;
            this.pathToTheFile =  id + ".rtf"; 
            this.dateOfAddition = dateOfAddition;
            this.typeOfArticle = typeOfArticle;
            this.isCheck = false;
            
        }
        

    }

}
