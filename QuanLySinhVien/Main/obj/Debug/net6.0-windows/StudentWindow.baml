   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MainMain  5   	       Main.StudentWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Main     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ Student��5	   	   $	��450��6   $
��1000��6&   .��5
      � .+�5   
   �� $��Điểm số��6   $��10,146,638,10q�6$   .��5      &   System.Windows.Controls.DataGrid  -   5          Name$ 
dtg_Scores��5         CanUserAddRows$ False��6+      AutoGenerateColumns$ False��6m   
�������   SelectionMode$ Single=�6�   ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã SV��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *Tensv+  5      $ Tên chủ đề��6)    6=   �� *Tenmh+  5      $ Điểm số��6)    6:   �� *Diem+5      5      �� 5   
   $��Điểm của lớp��6   $��367,10,10,10q�6,   .��5        -   5        $ dtg_ScoresStudent��5      $ False��62   $ False��6t   
�������$ Single=�6�   ��6�   ��  5        5      $ Mã SV��6)   	   
IsReadOnly$
	 True��6P    69   �� *Id+6P     5      $ tên SV��6)   $
	 True��6X    69   �� *
Tenhocsinh+6X     5      $ Điểm tb��6)   $
	 True��6V    6;   �� *Diemtb+6V   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Action��6-   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 150 6=      CellTemplate 5      �� 5      .R�5   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5   &   �� -   5        $��30��5   -   $��80��69   .��6_   Chi tiết6j   5   #   5       5"      5$      5'      �� 5(   
   -   5         ��Name$ 
btn_Logout��5(      $��Logout��6%   $
��Left=�66   $��
140,99,0,0q�6Q   $	��Top=�6e   $��42��6}   $��92��6�   6�   �� 5)   
   -   5         ��Name$ txt_SearchStudent��5)      $
��Left=�6-   $��
140,25,0,0q�6l    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��222��6�   $��33��6�   $��16(�6�   �� 5*   
   $��SearchStudent��6   $
��Left=�6(   $��	10,25,0,0q�6C   $	��Top=�6V   $��33��6n   $	��135��6z   $��16(�6�   5+      5,      