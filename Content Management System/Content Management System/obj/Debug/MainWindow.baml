   M S B A M L   `   `   `  ����T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Content_Management_SystemContent_Management_System  5   	   W SNotification.Wpf, Version=8.0.0.0, Culture=neutral, PublicKeyToken=1acac493089262b5_Aclr-namespace:Notification.Wpf.Controls;assembly=Notification.WpfNotification.Wpf.Controls 5   	   *    $Content_Management_System.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:Content_Management_System     5   	   [notificationsAclr-namespace:Notification.Wpf.Controls;assembly=Notification.Wpf     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � AllowsTransparency . 
������  � SizeToContent$ WidthAndHeight=�5   	    � WindowStyle$
 None=�5   	    � 	Resources 5         DefaultButtonStyle �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��5      .�5      ��  � ��$ Times New Roman)�5      �� 5       � ��$ 16(�5      5      5      .��5      �� $	��590��5   	   $	��350��5   	    5   
   3  -System.Windows.Media.Effects.DropShadowEffect  MouseOverDropShadowEffect   	Direction	   Opacity
   ShadowDepth   Color��%h   &	         5       $	 320Q�5"      $	 80Q�5#      $
 10Q�5$      $ 	Goldenrod��5%      5&      .+�5(   
   F� -   5        $��UIPath��5)      
��� ���$��2��5+      ��5,      �� 5-       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5.      �  � Color$ Black��6#    � Offset$	 0.1Q�61   � 5/      $ Black��6#   $
 0.95Q�62   � 50      $ #daa520��6#   $
 0.25Q�63   51      ��53      B� 54      .��55      E�  E� 
StartPoint$
 50,0&�6!   .��56      ��  �� Point$
 0,50&�6&   �� 57      $ 0,300&�6&   �� 58      $ 50,350&�6&   �� 59      $ 550,350&�6&   �� 5:      $ 590,300&�6&   �� 5;      $ 590,50&�6&   �� 5<      $ 550,0&�6&   �� 5=      $
 50,0&�6&   5>      5?      5A      0  *Notification.Wpf.Controls.NotificationArea  5B   
   -   5          Name$ WindowNotificationArea��5C       K� ZIndex$
 1000��5D         MaxItems$ 3��5E         Position$ TopRight=�5F      ]� 5H   
    �� Left$ 10��5I      
 �� Top$ 60��5J      $	��570��5K      $	��240��5L      $
��Left=�6   $��Center=�65   .+�5M      �� $��REPLAY��6   $��Times New Roman)�6%   $��35(�6B   $��10,1,10,-17q�6P   $��Normal$�6e   $��Center=�6x   $��Stretch=�6�   $��66��6�   $	��145��6�   �� 5N      $��5q�5O      $��Bottom=�5P       �� Orientation$ 
Horizontal=�5Q      .+�5R      � $	��388��6   $��74��6#    � RowDefinitions 5S      �� 5T      $��0* �6(   �� 5U      �� 5V       � ColumnDefinitions 5Y      �� 5Z      $	��71* �6+   �� 5[      $
��343* �6+   .+�5^      �� -   5         ��Name$ UserNameLabel��5_      $��Center=�5`      $��Center=�5a      $��	Username:��5b      
���   �$��Times New Roman)�6@   $��25��6]   $��66��6i   $��1��6t   �� 5c      -   5        $ PasswordLabel��5d      $��2��5e      $��Center=�5f      $��Center=�5g      $��	Password:��5h      
���   �$��Times New Roman)�6@   $��25��6]   $��62��6i   �� 5i      -   5         ��Name$ UserNameTextBox��5j      $��1��5k      $��1��5l      $	��198��5m      $��28��5n      $��3q�5o      $
��Left=�5p      $��Center=�5q      ���#daa520
���   �
��� ���$�� ��5w       �� TextWrapping$
 Wrap=�5x      G� 5y      -   5         G�Name$ PasswordTextBox��5z      $��2��5{      $��1��5|      $	��198��5}      $��28��5~      ���#daa520
���   �
��� ���$��3q�5�      $
��Left=�5�      $��Center=�5�      5�      5�      5�      5�      �� 5�   
   -   5         ��Name$ LogInButton��5�      $	 280��5�      $	 236��5�      $��60��5�      $��22��5�      $
��Left=�5�      $��Bottom=�5�      
���   �
��� ���
���   �  � Cursor$	  Pen��5�      ! � ToolTip$! Log in to the page��5�      $��Log in��5�      $��Times New Roman)�5�      ��5�      �� 5�      " ��6   " �� Triggers" 5�      P� 5�      # P� Property# �@J�IsMouseOver$ P� Value$ . . �5�      ��  �@J�Effect# [ 67   5�      5�      5�      �� 5�   
   -	   5        $ CloseButton��5�      $��Right=�5�      $��Bottom=�5�      $��60��5�      $��22��5�      
���   �
��� ���
���   �$��Close��5�      $	  Pen��5�      $! Exit the application��5�      $	 345��5�      $	 236��5�      $��Times New Roman)�5�      ��5�      �� 5�      " ��6   " 5�      P� 5�      # �@J�IsMouseOver$ . . �5�      ��  �@J�Effect# [ 67   5�      5�      5�      �� 5�   
   -
   5        $ UserNameErrorLabel��5�      $�� ��5�      $	 450��5�      $	 150��5�      $
��Left=�5�      $	��Top=�5�      $	��122��5�      
���  ��$��26��5�      �� 5�   
   -   5        $ PasswordErrorLabel��5�      $�� ��5�      $	 450��5�      $	 185��5�      $��Center=�5�      $	��Top=�5�      $	��122��5�      
���  ��$��24��5�      5�      5�      