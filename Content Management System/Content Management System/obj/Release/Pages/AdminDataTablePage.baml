   M S B A M L   `   `   `  ���� T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Content_Management_System.PagesContent_Management_System.Pages  3    -Content_Management_System.Pages.DataTablePage   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ?local-clr-namespace:Content_Management_System.Pages       N� Title$  DataTablePage�� � 	Resources    	BoolToVis  
BlackColor �� Color  LettersColor  DefaultButtonStyle �� 
TargetType  MyColumnStyle*  $System.Windows.Controls.DataGridCell �� Property �� Value  MyColumnStyle13  -System.Windows.Media.Effects.DropShadowEffect  MouseOverDropShadowEffect   	Direction   Opacity   ShadowDepth	   Color��%�   &	        &	      &	      &	 +     &	 5     7  &	 T     7  &	 s     �� �� $ Black���� $ 	Goldenrod���� " ���� "  .���  � ��8   �� "  .���  � ��8     $	 320Q�$ 80Q�$ 10Q�$	 	Goldenrod��.��� ���� 
 �� EndPoint$
 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$	 0.1Q�� $ Black��$
 0.95Q�� $ #daa520��$
 0.25Q� � RowDefinitions �� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* � � ColumnDefinitions �� $��* ��� $��* �.+��� -    ��Name$ 
TitleLabel��$��0��$��0��$��3��$��0,10,0,0q�$��Center=�$��Center=�$��Center=�$��Center=�$��
DATA TABLE��
��� ���$��Times New Roman)�$��34(�&   System.Windows.Controls.DataGrid  -     Name$ ArticlesDataGrid��$��1��$��0��$��4��$��3��$��	10,5,10,0q�   CanUserAddRows .     AutoGenerateColumns .  ��. $
��Auto=�$
��Auto=����� *
Articles+���� $
 0.5,1&�$ 0.5,0&�.��� $ Black��$	 0.1Q�� $ Black��$
 0.95Q�� $ #daa520��$
 0.25Q�   Columns 4  .System.Windows.Controls.DataGridCheckBoxColumn  ,  &System.Windows.Controls.DataGridColumn   	CellStyle# [ 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	IsCheck+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5  /System.Windows.Controls.DataGridHyperlinkColumn     Header$ 	Hyperlink�� �� *Id+   ElementStyle �� " ��.�-   4  .System.Windows.Controls.DataGridTemplateColumn     CellTemplate �� .R���  ��Name$ ImageOfarticle��$��40��$��40������ *ImageOfArticle+0	  *System.Windows.Controls.DataGridTextColumn	  $
 Date�� �� *DateOfAddition+�� $��5��$��0��$��3��$��Center=� �� Orientation$ Vertical=�.+��� $��5��$��0��$��3��$	��330��$��8��$��	10,5,10,0q�$��Center=�$	��Top=�
�������� $��5,5,5,0q�$ 
Horizontal=�.+��� -    ��Name$ AddArticleButton��$	��150��$��28��$��5,0,0,5q�$
��Left=�$��Bottom=�
���   �
���   �
������$	��Add�� � Cursor$	 Pen��  � ToolTip$  Add article��$��Times New Roman)�y��� *	IsAdmin+! �� 	Converter#! [  �� -   $ RemoveArticleButton��$	��150��$��28��$��29,0,5,5q�$��Bottom=�$��Right=�
���   �
������
���   �$��Remove��$	 Pen��$  Remove selected article��$��Times New Roman)�