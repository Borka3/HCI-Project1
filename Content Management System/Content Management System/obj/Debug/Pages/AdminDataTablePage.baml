   M S B A M L   `   `   `  ����T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Content_Management_System.PagesContent_Management_System.Pages  5      3    -Content_Management_System.Pages.DataTablePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:Content_Management_System.Pages     5        N� Title$  DataTablePage��5
       � 	Resources 5         	BoolToVis  
BlackColor �� Color  LettersColor  DefaultButtonStyle �� 
TargetType  MyColumnStyle*  $System.Windows.Controls.DataGridCell �� Property �� Value  MyColumnStyle13  -System.Windows.Media.Effects.DropShadowEffect  MouseOverDropShadowEffect   	Direction   Opacity   ShadowDepth	   Color��%�  &	        &	      &	 2     &	 U     &	 q     7  &	 �     7  &	     �� 5   
   6'   �� 5   
   $ Black��6-   �� 5   
   $ 	Goldenrod��6/   �� 5   
   " ��5      �� 5   
   "  5      .�5      ��  � ��8   6+   5      �� 5   
   "  5      .�5      ��  � ��8   6+   5        5   
   $	 320Q�5      $ 80Q�5       $ 10Q�5!      $	 	Goldenrod��5"      5$      .��5%      � ��5&   
   �� 5'      
 �� EndPoint$
 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5(      �  � Color$ Black��6    � Offset$	 0.1Q�6-   � 5)      $ Black��6   $
 0.95Q�6.   � 5*      $ #daa520��6   $
 0.25Q�6/   5+       � RowDefinitions 5-   
   �� 5.      $��* �6   �� 5/      $��* �6   �� 50      $��* �6   �� 51      $��* �6   �� 52      $��* �6   �� 53      $��* �6    � ColumnDefinitions 55   
   �� 56      $��* �6   �� 57      $��* �6   .+�5:   
   �� -   5         ��Name$ 
TitleLabel��5;      $��0��5<      $��0��5=      $��3��5>      $��0,10,0,0q�5?      $��Center=�5@      $��Center=�5A      $��Center=�5B      $��Center=�5C      $��
DATA TABLE��5D      
��� ���$��Times New Roman)�5F      $��34(�5G      &   System.Windows.Controls.DataGrid  5H   
   -   5          Name$ ArticlesDataGrid��5I      $��1��5J      $��0��5K      $��4��5L      $��3��5M      $��	10,5,10,0q�5N         CanUserAddRows .     AutoGenerateColumns .  ��. $
��Auto=�5S      $
��Auto=�5T      ��5P      �� *
Articles+��5U      �� 5V      $
 0.5,1&�6&   $ 0.5,0&�67   .��5W      � $ Black��6#   $	 0.1Q�61   � 5X      $ Black��6#   $
 0.95Q�62   � 5Y      $ #daa520��6#   $
 0.25Q�63   5Z         Columns 5\      4  .System.Windows.Controls.DataGridCheckBoxColumn  5]      ,  &System.Windows.Controls.DataGridColumn   	CellStyle# [ 5^   c   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6   �� *	IsCheck+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6c   5  /System.Windows.Controls.DataGridHyperlinkColumn  5_         Header$ 	Hyperlink��5`       5a      �� *Id+   ElementStyle 5b      �� 5c      " ��6    .�5d      -   5        5e      5g      4  .System.Windows.Controls.DataGridTemplateColumn  5h         CellTemplate 5i      �� 5j      .R�5k      ��  ��Name$ ImageOfarticle��6$   $��40��6^   $��40��6i   ��6<   �� *ImageOfArticle+6i   5l      5n      0	  *System.Windows.Controls.DataGridTextColumn	  5o      $
 Date��5p       5q      �� *DateOfAddition+5r      5u      �� 5v   
   $��5��5w      $��0��5x      $��3��5y      $��Center=�5z       �� Orientation$ Vertical=�5{      .+�5}      �� $��5��5~      $��0��5      $��3��5�      $	��330��5�      $��8��5�      $��	10,5,10,0q�5�      $��Center=�5�      $	��Top=�5�      
������5�      �� 5�      $��5,5,5,0q�5�      $ 
Horizontal=�5�      .+�5�      �� -   5         ��Name$ AddArticleButton��5�      $	��150��5�      $��28��5�      $��5,0,0,5q�5�      $
��Left=�5�      $��Bottom=�5�      
���   �
���   �
������$	��Add��5�       � Cursor$	 Pen��5�        � ToolTip$  Add article��5�      $��Times New Roman)�5�      y�5�      �� *	IsAdmin+! �� 	Converter#! [  �� 5�      -   5        $ RemoveArticleButton��5�      $	��150��5�      $��28��5�      $��29,0,5,5q�5�      $��Bottom=�5�      $��Right=�5�      
���   �
������
���   �$��Remove��5�      $	 Pen��5�      $  Remove selected article��5�      $��Times New Roman)�5�      5�      5�      5�      5�      