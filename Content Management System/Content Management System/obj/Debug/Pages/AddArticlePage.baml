   M S B A M L   `   `   `  ����\  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls  5      T PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Content_Management_System.PagesContent_Management_System.Pages 5      4   .Content_Management_System.Pages.AddArticlePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006      5      X TFontAwesome5.Net, Version=2.1.11.0, Culture=neutral, PublicKeyToken=9cfaf01297a008f8/fa5%http://schemas.fontawesome.com/icons/  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      ScontrolsDclr-namespace:System.Windows.Controls;assembly=PresentationFramework  5      9local-clr-namespace:Content_Management_System.Pages  5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5	        N� Title$  AddArticlePage��5       N� 
Background
 � ���.��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6    � Offset$	 0.1Q�6-   � 5      $ Black��6   $
 0.95Q�6.   � 5      $ #daa520��6   $
 0.25Q�6/   5       � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��3* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5    
   �� 5!      $��* �6   �� 5"      $��2* �6   .+�5$   
   �� -   5         ��Name$ 
TitleLabel��5%      $��0��5&      $��2��5'      $��	209,0,0,0q�5(      $
��Left=�5)      $��Center=�5*      $��Center=�5+      $��Center=�5,      $��ADD ARTICLE��5-      
��� ���$��Times New Roman)�5/      $��34(�50      $��49��6   $	��232��6'   �� 51   
   -   5        $ NumOfArticleLabel��52      $��1��53      $��0��54      $��56��55      $��10,0,0,0q�56      $��Times New Roman)�57      $
��Left=�58      $��Center=�59      $��Number of article:��5:      $��20(�5;      $	��158��6   �� 5<   
   -   5        $ PathToTheFileLabel��5=      $��2��5>      $��0��5?      $��56��5@      $��	10,-2,0,0q�5A      $��Times New Roman)�5B      $
��Left=�5C      $	��Top=�5D      $��Path to the file: ��5E      $��20(�5F      $	��138��6   �� 5G   
   -   5        $ ImageOfArticleLabel��5H      $��3��5I      $��0��5J      $��56��5K      $��10,0,0,0q�5L      $��Times New Roman)�5M      $
��Left=�5N      $��Center=�5O      $��Image of an article: ��5P      $��20(�5Q      $	��171��6   �� 5R   
   -   5        $ TypeOfArticleLabel��5S      $��4��5T      $��0��5U      $��56��5V      $��10,0,0,0q�5W      $��20(�5X      $��Times New Roman)�5Y      $
��Left=�5Z      $��Center=�5[      $��Type of an article: ��5\      $	��161��6,   �� 5^   
   $��1��5_      $��1��5`      $	��210��5a      $��55��5b      $
��Left=�5c      $��Center=�5d      .+�5e      �� -   5        	 ��Name$	 NumOfArticleTextBox��5h      $��28��5f      $	��198��5g      $�� ��5k      
 �� TextWrapping$

 Wrap=�5l      
���   �
���   �5n      �� 5o      -   5        $ NumErrorLabel��5p      $��30��5q      $�� ��5r      
���  ��5s      5t      �� 5u   
   $��2��5v      $��1��5w      $	��420��5x      $	��199��5y      $
��Left=�5z      $��Center=�5{      .+�5|      �� -   5        $	 PathToTheFileTextBox��5}      $��5,4,0,0q�5~      $	��198��5      $��28��5�      $
��Left=�5�      $�� ��5�      $

 Wrap=�5�      
���   �
���   �5�      5�      ]� 5�   
   $��2��5�      $��1��5�      $	��410��5�      $��
0,41,12,10q�6   .+�5�      c� -	   5        $��EditorToolBar��5�      $	��Top=�5�      $��28��6&   $��	0,1,0,100q�5�      
���   �.@�5�      d� -
   5        $��BoldToggleButton��5�      $ ��EditingCommands.ToggleBold��5�       � ToolTip$
 Bold��5�      .��5�        FontAwesome5.SvgAwesome  $��15��5�      $��Center=�5�      $��Center=�5�         
Foreground
 � ���   Icon$ 
Solid_Bold=�5�      5�      �� 5�      d� 5�      -   5        $��ItalicToggleButton��5�      $"��EditingCommands.ToggleItalic��5�      $ Italic��5�      .��5�        $��15��5�      $��Center=�5�      $��Center=�5�      
 � ���$ Solid_Italic=�5�      5�      �� 5�      d� 5�      -   5        $��UnderlineToggleButton��5�      $%��EditingCommands.ToggleUnderline��5�      $ 	Underline��5�      .��5�        $��15��5�      $��Center=�5�      $��Center=�5�      
 � ���$ Solid_Underline=�5�      5�      �� 5�      �� 5�      -   5        $��FontSizeComboBox��5�      $��60��5�      
��� ��� �� IsTextSearchEnabled . 5�      �� 5�      �� 5�      -   5        $��FontFamilyComboBox��5�      $	��120��5�      
��� ���  �� IsTextSearchCaseSensitive .   . 5�      �� 5�      #  Xceed.Wpf.Toolkit.ColorPicker  5�      -   5        $��ColorPickerForeground��5�      $	��120��5�      $��20��5�      
��� ���
���   �   DisplayColorAndName . 5�   Y   �� 5�      5�      �� 5�      $��Bottom=�6   $��10,-20,10,6q�60   
��� ���
���   �$��25��6p   .@�5�      �� -   5         ��Name$ wordCountTextBlock��5�      $��Center=�61   $��Number of words: ��6O   5�      �� 5�      -   5        $��EditorRichTextBox��5�      $	��390��5�      $��
0,-90,0,23q�5�      
��� ���
���   �$��5q�5�      
��� ���. �5�      /� .T�5�      J� .*�6    .*�5�      �� -   5         �Name$
 Text��5�      $� ��6*   5�      5�      5�      5�      �� 5�   
   $��3��5�      $��1��5�      $	��350��5�      $��55��5�      $
��Left=�5�      $��Center=�5�      .+�5�      �� -   5         ��Name$ ImageButton��5�      $��7,0,0,0q�6&   $	��150��68   $��28��6D   
���   �
���   �
��� ���$��Times New Roman)�6�   $��Search��6�   $
��Left=�6�   6�   �� 5�      -   5        $��ImagePreview��5�      $��52��6(   $	��144��64   $��160,-30,45,15q�6@   �� 5�      -   5        $ ImageErrorLabel��5�      $��30��5�      $�� ��5�      
���  ��5�      5�      �� 5�   
   $��4��5�      $��1��5�      $	��210��5�      $��55��5�      $
��Left=�5�      $��Center=�5�      .+�5�      �� -   5        $	 TypeOfArticleTextBox��5     $��28��5      $	��198��5     $�� ��5     $

 Wrap=�5     
���   �
���   �5     �� 5	     -   5        $ TypeOfArticleErrorLabel��5
     $��30��5     $�� ��5     
���  ��5     5     �� 5  
   $��6��5     $��0��5     $��2��5     $
��Left=�5      �� Orientation$ Vertical=�5     $��	157,0,0,0q�6$   $	��336��67   .+�5     �� $	��316��5     $��8��5     $��	10,5,10,0q�5     $��Center=�5     $	��Top=�5     
������5     �� 5     $��5,5,5,0q�5     $ 
Horizontal=�5     .+�5      �� -   5        $ CreateArticleButton��5!     
���   �$	��150��5#     $��28��5$     $��5,0,0,5q�5%     $��Times New Roman)�5&     $
��Left=�5'     $��Bottom=�5(     
���   �
������$	��Add��5,      � Cursor$	 Pen��5-     $ Create an article��5.     �� 50     -   5        $ 
BackButton��51     $	��150��52     $��28��53     $��15,0,0,5q�54     $��Times New Roman)�55     $��Right=�56     $��Bottom=�57     
���   �
���   �
������$
��Back��5<     $	 Pen��5=     $ Navigate Back��5>     5?     5@     5A     5B     