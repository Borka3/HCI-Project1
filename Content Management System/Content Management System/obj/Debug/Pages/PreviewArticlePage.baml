   M S B A M L   `   `   `  ����T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Content_Management_System.PagesContent_Management_System.Pages  5      8    2Content_Management_System.Pages.PreviewArticlePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:Content_Management_System.Pages     5        N� Title$  PreviewArticlePage��5	       N� 
Background
 � ���.��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6    � Offset$	 0.1Q�6-   � 5      $ Black��6   $
 0.95Q�6.   � 5      $ #daa520��6   $
 0.25Q�6/   5       � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   �� 5      $��3* �6   .+�5   
   �� -   5         ��Name$ 
TitleLabel��5   
   $��0��5   
   $��2��5   
   $��	108,0,0,0q�5   
   $
��Left=�5   
   $��Center=�5   
   $��Center=�5    
   $��Center=�5!   
   $��PREVIEW ARTICLE��5"   
   
��� ���$��Times New Roman)�5$   
   $��34(�5%   
   $��49��6   $	��430��6$   �� 5&   
   $��1��5'      $��150,20,150,20q�5(      .+�5)      �� -   5        $��
imgPreview��5)      $	��223��6&   $	��172��62   5*      �� 5+   
   -   5         ��Name$ PreviewRichTextBox��5,      $��Stretch=�5-      $��Stretch=�5.      $��LeftToRight=�5/      $��Times New Roman)�50      $��20(�51      	 �� 
IsReadOnly	 . $	��550��53      $��10q�54      $��2��55      
��� ���$��10q�57      
��� ���. �59      /� .T�5:      J� .*�6   .*�5;      �� �6   �� *NumOfArticles+�� 5<      �� 5=      �6   �� *PathToTheFile+�� 5>      �� 5?      �6   �� *TypeOfArticle+5@      5A      5B      5F      5G      