   M S B A M L   `   `   `  ���� T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Content_Management_SystemContent_Management_System  W SNotification.Wpf, Version=8.0.0.0, Culture=neutral, PublicKeyToken=1acac493089262b5_Aclr-namespace:Notification.Wpf.Controls;assembly=Notification.WpfNotification.Wpf.Controls *    $Content_Management_System.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     9local'clr-namespace:Content_Management_System     [notificationsAclr-namespace:Notification.Wpf.Controls;assembly=Notification.Wpf     -     � Title$  
MainWindow��$	��450��$	��800�� � AllowsTransparency . 
������  � SizeToContent$ WidthAndHeight=� � WindowStyle$
 None=� � 	Resources    DefaultButtonStyle �� 
TargetType �� Property �� Value��%P   &	        �� " ��.���  � ��$ Times New Roman)���  � ��$ 16(�.���� $	��590��$	��350�� 3  -System.Windows.Media.Effects.DropShadowEffect  MouseOverDropShadowEffect   	Direction	   Opacity
   ShadowDepth   Color��%;   &	         $	 320Q�$	 80Q�$
 10Q�$ 	Goldenrod��.+�F� -   $��UIPath��
��� ���$��2������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$	 0.1Q�� $ Black��$
 0.95Q�� $ #daa520��$
 0.25Q���B� .��E�  E� 
StartPoint$
 50,0&�.����  �� Point$
 0,50&��� $ 0,300&��� $ 50,350&��� $ 550,350&��� $ 590,300&��� $ 590,50&��� $ 550,0&��� $
 50,0&�0  *Notification.Wpf.Controls.NotificationArea  -     Name$ WindowNotificationArea�� K� ZIndex$
 1000��   MaxItems$ 3��   Position$ TopRight=�]�  �� Left$ 10��
 �� Top$ 60��$	��570��$	��240��$
��Left=�$��Center=�.+��� $��REPLAY��$��Times New Roman)�$��35(�$��10,1,10,-17q�$��Normal$�$��Center=�$��Stretch=�$��66��$	��145���� $��5q�$��Bottom=� �� Orientation$ 
Horizontal=�.+�� $	��388��$��74�� � RowDefinitions �� $��0* ��� ��  � ColumnDefinitions �� $	��71* ��� $
��343* �.+��� -    ��Name$ UserNameLabel��$��Center=�$��Center=�$��	Username:��
���   �$��Times New Roman)�$��25��$��66��$��1���� -   $ PasswordLabel��$��2��$��Center=�$��Center=�$��	Password:��
���   �$��Times New Roman)�$��25��$��62���� -    ��Name$ UserNameTextBox��$��1��$��1��$	��198��$��28��$��3q�$
��Left=�$��Center=����#daa520
���   �
��� ���$�� �� �� TextWrapping$
 Wrap=�G� -    G�Name$ PasswordTextBox��$��2��$��1��$	��198��$��28�����#daa520
���   �
��� ���$��3q�$
��Left=�$��Center=��� -    ��Name$ LogInButton��$	 280��$	 236��$��60��$��22��$
��Left=�$��Bottom=�
���   �
��� ���
���   �  � Cursor$	  Pen��! � ToolTip$! Log in to the page��$��Log in��$��Times New Roman)����� " ��" �� Triggers" P� # P� Property# �@J�IsMouseOver$ P� Value$ . . ���  �@J�Effect# [ �� -	   $ CloseButton��$��Right=�$��Bottom=�$��60��$��22��
���   �
��� ���
���   �$��Close��$	  Pen��$! Exit the application��$	 345��$	 236��$��Times New Roman)����� " ��" P� # �@J�IsMouseOver$ . . ���  �@J�Effect# [ �� -
   $ UserNameErrorLabel��$�� ��$	 450��$	 150��$
��Left=�$	��Top=�$	��122��
���  ��$��26���� -   $ PasswordErrorLabel��$�� ��$	 450��$	 185��$��Center=�$	��Top=�$	��122��
���  ��$��24��