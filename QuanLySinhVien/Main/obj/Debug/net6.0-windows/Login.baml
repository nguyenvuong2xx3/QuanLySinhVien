   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MainMain  5   	       
Main.Login   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Main     5   	   -   5          � WindowStyle$
  None=�5   	    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � AllowsTransparency$
 true��5   	    � Title$ Login��5   	   $	��450��5   	   $	��800��6   
����ح�.��5      �  � ColumnDefinitions 5   
   �� 5      .+�5   
   �� $�� ��6   $��10,10,10,186q�6   
�������.��5      �� $��10,10,10,10q�6   
������ .+�5      �� $��Email:��6   $��Center=�6)   $��Center=�6F    �� Left$	 129��6a   
 �� Top$ 34��6s   $��44��6�   $��74��6�   $��25(�6�   �� 5      -   5         ��Name$ 	txt_Email��5      $��Center=�6-   $��44��6J   	 �� TextWrapping$
	 Wrap=�6V   $	��Top=�6j   $	��286��6�   $	 233��6�   $ 34��6�   $��20(�6�   �� 5      $��	Password:��6   $��Center=�6,   $	��Top=�6I   $ 86��6a   $	 102��6r   $��25(�6�   G� 5      -   5        
 G�Name$
 txt_Password��5      $��Center=�64   $	��Top=�6Q   $	��286��6i   $	 233��6u   $	 108��6�   $��35��6�   $��20(�6�   5      5      �� 5   
   $�� ��6   $��10,253,10,10q�6   
�������.��5       �� $��10,10,10,10q�6   
������ .+�5!      �� -   5         ��Name$ 	btn_Login��5!      $��Login��6,   $
��Left=�6<   $	��Top=�6W   $	��147��6o   $ 54��6{   $ 28��6�   $��58��6�   $��20(�6�   
��� � �
�������$
��Bold"�6�   �� 5"      -   5        $ btn_Register��5"      $��Register��6/   $
��Left=�6B   $	��Top=�6]   $	��146��6u   $	 298��6�   $ 28��6�   $��60��6�   $��20(�6�   
������
�������$
��Bold"�6  �� 5#      -   5        $ btn_Exit��5#      $
��Exit��6+   $	��147��6:   $	 538��6F   $��58��6X   $
��Left=�6{   $	��Top=�6�   $ 28��6�   $��20(�6�   
���  ��
�������$
��Bold"�6�   5$      5%      5&      5'      