   M S B A M L   `   `   `  ����T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Content_Management_SystemContent_Management_System  5   	   W SNotification.Wpf, Version=8.0.0.0, Culture=neutral, PublicKeyToken=1acac493089262b5_Aclr-namespace:Notification.Wpf.Controls;assembly=Notification.WpfNotification.Wpf.Controls 5   	   *    $Content_Management_System.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:Content_Management_System     5   	   [notificationsAclr-namespace:Notification.Wpf.Controls;assembly=Notification.Wpf     5   	   -   5          � Title$  
UserWindow��5	   	   $	��650��5
   	   $	��800��5   	    � AllowsTransparency . 
������  � SizeToContent$ WidthAndHeight=�5   	    � WindowStyle$
 None=�5   	    � 	Resources 5         DefaultButtonStyle �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��5      .�5      ��  � ��$ Times New Roman)�5      �� 5       � ��$ 16(�5      5      5      .��5      �� $	��750��5   	   $	��650��5    	    5!   
   3  -System.Windows.Media.Effects.DropShadowEffect  MouseOverDropShadowEffect   	Direction	   Opacity
   ShadowDepth   Color��%h   &	         5"      $	 320Q�5$      $	 80Q�5%      $
 10Q�5&      $ 	Goldenrod��5'      5(      .+�5)   
   F� -   5        $��UIPath��5*      
��� ���$
��Left=�5+       $	��650��6;    �� Stretch$
 Fill=�6H   $��Center=�6W   $	��750��6r   ��5,      �� 5-       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5.      �  � Color$ Black��6#    � Offset$	 0.1Q�61   � 5/      $ Black��6#   $
 0.95Q�62   � 50      $ #daa520��6#   $
 0.25Q�63   51      ��53      B� 54      .��55      E�  E� 
StartPoint$
 50,0&�6!   .��56      ��  �� Point$
 0,50&�6&   �� 57      $ 0,300&�6&   �� 58      $ 50,350&�6&   �� 59      $ 550,350&�6&   �� 5:      $ 590,300&�6&   �� 5;      $ 590,50&�6&   �� 5<      $ 550,0&�6&   �� 5=      $
 50,0&�6&   5>      5?      5A      0  *Notification.Wpf.Controls.NotificationArea  5B   
   -   5          Name$ WindowNotificationArea��5C       K� ZIndex$
 1000��5D         MaxItems$ 3��5E         Position$ TopRight=�5F      ]� 5G   
    �� Left$ 63��5H      
 �� Top$ 10��5I      $	��650��5J      $	��625��5K      $��Center=�6   $	��Top=�67   .+�5L      �� $��5q�5M      $��Bottom=�5N       �� Orientation$ 
Horizontal=�5O      .+�5P      ]� .+�5Q      � $��50��5R      
���   �$	��Top=�5T      $	��625��6-    � ColumnDefinitions 5U      �� 5V      $��* �6/   �� 5W      $��3* �6/   �� 5X      $��* �6/   .+�5Z      �� -   5         ��Name$ 
BackButton��5[      $��0��5\      $��0��5]      $��5q�5^      $��Times New Roman)�5_      
���   �
���   �
��� ���$
��Back��5d       � Cursor$	 Pen��5e       � ToolTip$ Navigate Back��5g      {�5f      ��  �� ElementName$ 	MainFrame�� �� Path$ 	CanGoBack�5g      �� 5h      $��REPLAY��6    $��1��61   $��Times New Roman)�6A   $��35(�6^   
��� ���$��	116,0,0,0q�6�   $��Center=�6�   �� 5i      -   5        $ 
ExitButton��5j      $��0��5k      $��2��5l      $��5q�5m      $
��Auto��5n      $
��Auto��5o      $��Times New Roman)�5p      
���   �
��� ���
���   �$��Stretch=�5t      $��Stretch=�5u      $	 Pen��5w      $
��Exit��5x      $ Close the application��5y      5z       � 5{      -   5           �Name$  	MainFrame��5|      $��Bottom=�5}      !  � NavigationUIVisibility$! Hidden=�5~      "  � Source$#" Pages/AdminDataTablePage.xaml?�5      5�      5�      5�      5�      5�      