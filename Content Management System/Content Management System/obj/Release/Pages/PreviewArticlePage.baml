   M S B A M L   `   `   `  ���� T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Content_Management_System.PagesContent_Management_System.Pages  8    2Content_Management_System.Pages.PreviewArticlePage   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ?local-clr-namespace:Content_Management_System.Pages       N� Title$  PreviewArticlePage�� N� 
Background
 � ���.��� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$	 0.1Q�� $ Black��$
 0.95Q�� $ #daa520��$
 0.25Q� � RowDefinitions �� $��* ��� $��2* ��� $��3* �.+��� -    ��Name$ 
TitleLabel��$��0��$��2��$��	108,0,0,0q�$
��Left=�$��Center=�$��Center=�$��Center=�$��PREVIEW ARTICLE��
��� ���$��Times New Roman)�$��34(�$��49��$	��430���� $��1��$��150,20,150,20q�.+��� -   $��
imgPreview��$	��223��$	��172���� -    ��Name$ PreviewRichTextBox��$��Stretch=�$��Stretch=�$��LeftToRight=�$��Times New Roman)�$��20(�	 �� 
IsReadOnly	 . $	��550��$��10q�$��2��
��� ���$��10q�
��� ���. �/� .T�J� .*�.*��� ��� *NumOfArticles+�� �� ��� *PathToTheFile+�� �� ��� *TypeOfArticle+