   M S B A M L   `   `   `  ����G  CCipherOmatik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CipherOmatikCipherOmatik  5   	       CipherOmatik.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   &localclr-namespace:CipherOmatik  5   	     � Title$  Cipher-O-Matic��5	   	   $	��450��6    $��354.5��6-   .��5      � $��0,0,2,0q�6   .+�5   
   �� -   5         ��Name$ BuCipher��5      $	��140��6#   $��45��6/   $	��Top=�6;   $
��Left=�6S   $��	26,81,0,0q�6n   .��5      � .+�5      �� $��Resources/crypt17x24.png��6   $��24��6:   $��24��6E   $��0,0,5,0q�6Q   �� 5      $�� Cipher��6   $��0,0,5,0q�6+   $��18(�6<   $
��Bold"�6J   6^   5      5      �� 5   
   -   5        $ 
BuDecipher��5      $
��Left=�6%   $��
184,81,0,0q�6@   $	��Top=�6T   $	��140��6l   $��45��6x   $
��Bold"�6�   $��18(�6�   .��5      � .+�5      �� $ ��Resources/decrypt24x23.png��6   $��24��5      $��24��6#   $��0,0,5,0q�6/   �� 5      $��
  Decipher��6   $��18(�6.   $
��Bold"�6<   $��0,0,5,0q�6N   5      5      �� 5   
   -   5         ��Name$ TbInput��5      $
��Left=�6#   $��28��6>   $��	26,42,0,0q�6J    �� TextWrapping$
 Wrap=�6]   $	��Top=�6q   $	��298��6�   $��18(�6�   �� 5   
   -   5         ��Name$ LbInput��5      $��Input:��6!   $
��Left=�62   $��26,8,0,0q�6M   $	��Top=�6_   $
��Bold"�6w   $��18(�6�   �� 5   
   $��Crypting Methods��6   $
��Left=�6-   $	��100��6H   $��
26,126,0,0q�6U   $	��Top=�6i   $	��298��6�   $
��Bold"�6�   $��18(�6�   .��5      �� $
��0,10q�6   .+�5      	� -   5         	�Name$ RbMorse��5       d� 	IsChecked$
 TrueY�6/   $��Morse��6@   	� 5      -   5        $ RbCaesar��5      $��Caesar��60   5       5"      �� 5#   
   -   5        $ LbKey��5#      $��Cipher Key:��6   $
��Left=�65   $��
26,234,0,0q�6P   $	��Top=�6d   $
��Bold"�6|   �� 5$   
   -   5        $ LbResult��5$      $��Result:��6"   $
��Left=�64   $��
26,265,0,0q�6O   $	��Top=�6c   $
��Bold"�6{   $��18(�6�   �� 5%   
   -	   5        $ TbResult��5%      $
��Left=�6$   $��28��6?   $��
26,299,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��298��6�   $��18(�6�   %  Xceed.Wpf.Toolkit.IntegerUpDown  5&   
   -
   5        $��NudKey��5&      $
��Left=�6+   $	��Top=�6F   $��75��6^   $��25��6i   $��249,234,0,0q�6u   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 1X�6�      Value$ 1X�6�   �� 5'   
   -   5        $ BuExit��5'      $
��Left=�6!   $��
26,346,0,0q�6<   $	��Top=�6P   $	��298��6h   $��45��6t   .��5(      �� $��89��6   .+�5)      � .+�5*      �� $��Resources/exit24x24.png��6   $��24��6=   $��24��6H   $��0,0,5,0q�6T   $
��Left=�6e   �� 5+      $
��Exit��6    $��18(�6,   $
��Bold"�6:   $��Right=�6L   5,      5-      5.      �� 5/   
   -   5        $ 	BuToInput��5/      $��-> to input��6$   $
��Left=�6=   $��170,270,0,0q�6X   $	��Top=�6m   $��75��6�   �� 50   
   -   5        $ BuReset��50      $��Reset��6"   $
��Left=�62   $��250,270,0,0q�6M   $	��Top=�6b   $��75��6z   51      53      