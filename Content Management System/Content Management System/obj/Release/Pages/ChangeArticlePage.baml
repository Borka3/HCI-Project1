   M S B A M L   `   `   `  ���� T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Content_Management_System.PagesContent_Management_System.Pages  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls 7    1Content_Management_System.Pages.ChangeArticlePage   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ?local-clr-namespace:Content_Management_System.Pages     YcontrolsDclr-namespace:System.Windows.Controls;assembly=PresentationFramework     X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  X TFontAwesome5.Net, Version=2.1.11.0, Culture=neutral, PublicKeyToken=9cfaf01297a008f8/fa5%http://schemas.fontawesome.com/icons/    N� Title$  ChangeArticlePage�� N� 
Background
 � ���.��� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$	 0.1Q�� $ Black��$
 0.95Q�� $ #daa520��$
 0.25Q� � RowDefinitions �� $��* ��� $��* ��� $��3* ��� $��* ��� $��* ��� $��* ��� $��* � � ColumnDefinitions �� $��* ��� $��2* �.+��� -    ��Name$ 
TitleLabel��$��0��$��2��$��	108,0,0,0q�$
��Left=�$��Center=�$��Center=�$��Center=�$��CHANGE ARTICLE��
��� ���$��Times New Roman)�$��34(�$��49��$	��430���� -   $ NumOfArticleLabel��$��1��$��0��$��56��$��10,0,0,0q�$��Times New Roman)�$
��Left=�$��Center=�$��Number of article:��$��20(�$	��158���� -   $ PathToTheFileLabel��$��2��$��0��$��56��$��	10,-2,0,0q�$��Times New Roman)�$
��Left=�$	��Top=�$��Path to the file: ��$��20(�$	��138���� -   $ ImageOfArticleLabel��$��3��$��0��$��56��$��10,0,0,0q�$��Times New Roman)�$
��Left=�$��Center=�$��Image of an article: ��$��20(�$	��171���� -   $ TypeOfArticleLabel��$��4��$��0��$��56��$��10,0,0,0q�$��20(�$��Times New Roman)�$
��Left=�$��Center=�$��Type of an article: ��$	��161���� $��1��$��1��$	��210��$��55��$
��Left=�$��Center=�.+��� -   	 ��Name$	 NumOfArticleTextBox��$��28��$	��198��$�� ��
 �� TextWrapping$

 Wrap=�
��� ���
���   �
���   ��� -   $ NumErrorLabel��$��30��$�� ��
���  ���� $��2��$��1��$	��420��$	��199��$
��Left=�$��Center=�.+��� -   $	 PathToTheFileTextBox��$��5,4,0,0q�$	��198��$��28��
���   �$
��Left=�$�� ��$

 Wrap=�
���   �
��� ���]� $��2��$��1��$	��410��$��
0,41,12,10q�.+�c� -	   $��EditorToolBar��$	��Top=�$��28��$��	0,1,0,100q�
���   �.@�d� -
   $��BoldToggleButton��$ ��EditingCommands.ToggleBold�� � ToolTip$
 Bold��.��  FontAwesome5.SvgAwesome  $��15��$��Center=�$��Center=�   
Foreground
 � ���   Icon$ 
Solid_Bold=��� d� -   $��ItalicToggleButton��$"��EditingCommands.ToggleItalic��$ Italic��.��  $��15��$��Center=�$��Center=�
 � ���$ Solid_Italic=��� d� -   $��UnderlineToggleButton��$%��EditingCommands.ToggleUnderline��$ 	Underline��.��  $��15��$��Center=�$��Center=�
 � ���$ Solid_Underline=��� �� -   $��FontSizeComboBox��$��60��
��� ���
���   � �� IsTextSearchEnabled . �� �� -   $��FontFamilyComboBox��$	��120��
��� ���  �� IsTextSearchCaseSensitive .  
���   � . �� #  Xceed.Wpf.Toolkit.ColorPicker  -   $��ColorPickerForeground��$	��120��$��20��
��� ���   DisplayColorAndName . �� �� -   $ 	ColorName��$��25��$��80��
��� ���
���   ��� $��Bottom=�$��10,-20,10,6q�
��� ���
���   �$��25��.@��� -    ��Name$ wordCountTextBlock��$��Center=�$��Number of words: ���� -   $��EditorRichTextBox��$	��390��$��
0,-90,0,23q�
��� ���
���   �. �/� .T�J� .*�.*��� -    �Name$
 Text��$� ���� $��3��$��1��$	��350��$��55��$
��Left=�$��Center=�.+��� -    ��Name$ ImageButton��$��7,0,0,0q�$	��150��$��28��
���   �
���   �
��� ���$��Times New Roman)�$��Search��$
��Left=��� -   $��ImagePreview��$��52��$	��144��$��160,-30,45,15q�$	��Top=��� -   $ ImageErrorLabel��$��30��$�� ��
���  ���� $��4��$��1��$	��210��$��55��$
��Left=�$��Center=�.+��� -   $	 TypeOfArticleTextBox��$��28��$	��198��$�� ��$

 Wrap=�
���   �
���   �
��� ����� -   $ TypeOfArticleErrorLabel��$��30��$�� ��
���  ���� $��6��$��0��$��2��$
��Left=� �� Orientation$ Vertical=�$��	157,0,0,0q�$	��336��.+��� $	��316��$��8��$��	10,5,10,0q�$��Center=�$	��Top=�
�������� $��5,5,5,0q�$ 
Horizontal=�.+��� -   $ ChangeArticleButton��$	��150��$��28��$��5,0,0,5q�$��Times New Roman)�$
��Left=�$��Bottom=�
���   �
���   �
������$��Change�� � Cursor$	 Pen��$ Change the article���� -   $ 
BackButton��$	��150��$��28��$��15,0,0,5q�$��Times New Roman)�$��Right=�$��Bottom=�
���   �
������
���   �$
��Back��$	 Pen��$ Navigate Back��