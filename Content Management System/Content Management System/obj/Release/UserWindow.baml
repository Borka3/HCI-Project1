   M S B A M L   `   `   `  ���� T  PContent Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Content_Management_SystemContent_Management_System  W SNotification.Wpf, Version=8.0.0.0, Culture=neutral, PublicKeyToken=1acac493089262b5_Aclr-namespace:Notification.Wpf.Controls;assembly=Notification.WpfNotification.Wpf.Controls *    $Content_Management_System.UserWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     9local'clr-namespace:Content_Management_System     [notificationsAclr-namespace:Notification.Wpf.Controls;assembly=Notification.Wpf     -     � Title$  
UserWindow��$	��650��$	��800�� � AllowsTransparency . 
������  � SizeToContent$ WidthAndHeight=� � WindowStyle$
 None=� � 	Resources    DefaultButtonStyle �� 
TargetType �� Property �� Value��%P   &	        �� " ��.���  � ��$ Times New Roman)���  � ��$ 16(�.���� $	��750��$	��650�� 3  -System.Windows.Media.Effects.DropShadowEffect  MouseOverDropShadowEffect   	Direction	   Opacity
   ShadowDepth   Color��%;   &	         $	 320Q�$	 80Q�$
 10Q�$ 	Goldenrod��.+�F� -   $��UIPath��
��� ���$
��Left=�$	��650�� �� Stretch$
 Fill=�$��Center=�$	��750������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$	 0.1Q�� $ Black��$
 0.95Q�� $ #daa520��$
 0.25Q���B� .��E�  E� 
StartPoint$
 50,0&�.����  �� Point$
 0,50&��� $ 0,300&��� $ 50,350&��� $ 550,350&��� $ 590,300&��� $ 590,50&��� $ 550,0&��� $
 50,0&�0  *Notification.Wpf.Controls.NotificationArea  -     Name$ WindowNotificationArea�� K� ZIndex$
 1000��   MaxItems$ 3��   Position$ TopRight=�]�  �� Left$ 63��
 �� Top$ 10��$	��650��$	��625��$��Center=�$	��Top=�.+��� $��5q�$��Bottom=� �� Orientation$ 
Horizontal=�.+�]� .+�� $��50��
���   �$	��Top=�$	��625�� � ColumnDefinitions �� $��* ��� $��3* ��� $��* �.+��� -    ��Name$ 
BackButton��$��0��$��0��$��5q�$��Times New Roman)�
���   �
���   �
��� ���$
��Back�� � Cursor$	 Pen�� � ToolTip$ Navigate Back��{���  �� ElementName$ 	MainFrame�� �� Path$ 	CanGoBack��� $��REPLAY��$��1��$��Times New Roman)�$��35(�
��� ���$��	116,0,0,0q�$��Center=��� -   $ 
ExitButton��$��0��$��2��$��5q�$
��Auto��$
��Auto��$��Times New Roman)�
���   �
��� ���
���   �$��Stretch=�$��Stretch=�$	 Pen��$
��Exit��$ Close the application�� � -      �Name$  	MainFrame��$��Bottom=�!  � NavigationUIVisibility$! Hidden=�"  � Source$#" Pages/AdminDataTablePage.xaml?�