FasdUAS 1.101.10   ��   ��    k             l     �� ��    9 3 Generic Script Launcher with Support for Arguments       	  l     �� 
��   
 4 . by Martin Fuhrer (mfuhrer@alumni.ucalgary.ca)    	     l     �� ��    3 - Permission to modify and distribute granted.         l     ������  ��        l     �� ��    \ V This Applescript droplet calls the script myScript inside the application bundle, and         l     �� ��    F @ passes any file arguments from the droplet along to the script.         l     ������  ��        l     ������  ��        l         j     �� ��  0 scriptlocation scriptLocation  m         Contents:Resources:     3 - location of script within application bundle        !   l      " # " j    �� $�� 0 myscript myScript $ m     % %  launcher.sh    #   name of script    !  & ' & l     ������  ��   '  ( ) ( l     �� *��   * D > code gets called when application is double-clicked or opened    )  + , + l    	 -�� - r     	 . / . I    �� 0 1
�� .earsffdralis        afdr 0  f      1 �� 2��
�� 
rtyp 2 m    ��
�� 
TEXT��   / o      ���� 0 apppath appPath��   ,  3 4 3 l  
  5�� 5 r   
  6 7 6 b   
  8 9 8 b   
  : ; : o   
 ���� 0 apppath appPath ; o    ����  0 scriptlocation scriptLocation 9 o    ���� 0 myscript myScript 7 o      ���� 0 
scriptpath 
scriptPath��   4  < = < l     ������  ��   =  > ? > l   # @�� @ r    # A B A n    ! C D C 1    !��
�� 
strq D l    E�� E c     F G F n     H I H 1    ��
�� 
psxp I o    ���� 0 
scriptpath 
scriptPath G m    ��
�� 
TEXT��   B o      ���� 0 	posixpath 	posixPath��   ?  J K J l  $ ' L�� L r   $ ' M N M o   $ %���� 0 	posixpath 	posixPath N o      ���� 0 command  ��   K  O P O l     ������  ��   P  Q R Q l  ( A S�� S Q   ( A T U V T r   + 2 W X W I  + 0�� Y��
�� .sysoexecTEXT���     TEXT Y o   + ,���� 0 command  ��   X o      ���� 0 results   U R      �� Z [
�� .ascrerr ****      � **** Z o      ���� 0 	errortext 	errorText [ �� \��
�� 
errn \ o      ���� 0 errornumber errorNumber��   V I   : A�� ]���� 0 errormessage errorMessage ]  ^ _ ^ o   ; <���� 0 errornumber errorNumber _  `�� ` o   < =���� 0 	errortext 	errorText��  ��  ��   R  a b a l     ������  ��   b  c d c l     �� e��   e I C subroutine gets called when files are dropped onto the application    d  f g f i    	 h i h I     �� j��
�� .aevtodocnull  �    alis j o      ���� 0 argnames argNames��   i k     p k k  l m l r      n o n m      p p       o o      ���� 0 arglist argList m  q r q X    * s�� t s k    % u u  v w v r     x y x n     z { z 1    ��
�� 
strq { l    |�� | c     } ~ } n      �  1    ��
�� 
psxp � o    ���� 0 curpath curPath ~ m    ��
�� 
TEXT��   y o      ���� 0 	posixpath 	posixPath w  ��� � r    % � � � b    # � � � b    ! � � � o    ���� 0 arglist argList � o     ���� 0 	posixpath 	posixPath � m   ! " � �       � o      ���� 0 arglist argList��  �� 0 curpath curPath t o    ���� 0 argnames argNames r  � � � l  + +������  ��   �  � � � r   + 4 � � � I  + 2�� � �
�� .earsffdralis        afdr �  f   + , � �� ���
�� 
rtyp � m   - .��
�� 
TEXT��   � o      ���� 0 apppath appPath �  � � � r   5 D � � � b   5 B � � � b   5 < � � � o   5 6���� 0 apppath appPath � o   6 ;����  0 scriptlocation scriptLocation � o   < A���� 0 myscript myScript � o      ���� 0 
scriptpath 
scriptPath �  � � � l  E E������  ��   �  � � � r   E N � � � n   E L � � � 1   J L��
�� 
strq � l  E J ��� � c   E J � � � n   E H � � � 1   F H��
�� 
psxp � o   E F���� 0 
scriptpath 
scriptPath � m   H I��
�� 
TEXT��   � o      ���� 0 	posixpath 	posixPath �  � � � r   O V � � � b   O T � � � b   O R � � � o   O P���� 0 	posixpath 	posixPath � m   P Q � �       � o   R S���� 0 arglist argList � o      ���� 0 command   �  � � � l  W W������  ��   �  ��� � Q   W p � � � � r   Z a � � � I  Z _�� ���
�� .sysoexecTEXT���     TEXT � o   Z [���� 0 command  ��   � o      ���� 0 results   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 	errortext 	errorText � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � I   i p�� ����� 0 errormessage errorMessage �  � � � o   j k���� 0 errornumber errorNumber �  ��� � o   k l���� 0 	errortext 	errorText��  ��  ��   g  � � � l     ������  ��   �  ��� � i   
  � � � I      �� ����� 0 errormessage errorMessage �  � � � o      ���� 0 errornumber errorNumber �  ��� � o      ���� 0 	errortext 	errorText��  ��   � k     k � �  � � � Z     & � ����� � =     � � � o     ���� 0 errornumber errorNumber � m    ����  � k    " � �  � � � r     � � � n    
 � � � 4   
�� �
�� 
cwor � m    	��  � o    �~�~ 0 	errortext 	errorText � o      �}�} 0 programname programName �  ��| � I   "�{ � �
�{ .sysodlogaskr        TEXT � b     � � � b     � � � b     � � � b     � � � b     � � � m     � �  XDroplets Error    � o    �z
�z 
ret  � o    �y
�y 
ret  � l 	   ��x � m     � � $ Unable to launch the program '   �x   � o    �w�w 0 programname programName � m     � � a [', as it does not appear in your path.  Please make sure the program is properly installed.    � �v � �
�v 
btns � J     � �  ��u � m     � �  OK   �u   � �t ��s
�t 
dflt � m    �r�r �s  �|  ��  ��   �  � � � l  ' '�q�p�q  �p   �  � � � Z   ' M � ��o�n � =  ' * � � � o   ' (�m�m 0 errornumber errorNumber � m   ( )�l�l  � k   - I � �  � � � r   - 3 � � � n   - 1 � � � 4  . 1�k �
�k 
cwor � m   / 0�j�j�� � o   - .�i�i 0 	errortext 	errorText � o      �h�h  0 x11environment x11Environment �  ��g � I  4 I�f 
�f .sysodlogaskr        TEXT  b   4 ? b   4 = b   4 ; b   4 9	 b   4 7

 m   4 5  XDroplets Error    o   5 6�e
�e 
ret 	 o   7 8�d
�d 
ret  l 	 9 :�c m   9 : % Your selected X11 environment '   �c   o   ; <�b�b  0 x11environment x11Environment m   = > i c.app' could not be launched. Please use the XDroplets Setup program to select your X11 environment.    �a
�a 
btns J   @ C �` m   @ A  OK   �`   �_�^
�_ 
dflt m   D E�]�] �^  �g  �o  �n   �  l  N N�\�[�\  �[   �Z Z   N k�Y�X =  N Q o   N O�W�W 0 errornumber errorNumber m   O P�V�V  I  T g�U
�U .sysodlogaskr        TEXT b   T [  b   T Y!"! b   T W#$# m   T U%%  XDroplets Error   $ o   U V�T
�T 
ret " o   W X�S
�S 
ret   l 	 Y Z&�R& m   Y Z'' y sUnable to obtain display variable from /tmp/.X11-unix.  Please make sure your X11 environment is starting properly.   �R   �Q()
�Q 
btns( J   \ a** +�P+ m   \ _,,  OK   �P  ) �O-�N
�O 
dflt- m   b c�M�M �N  �Y  �X  �Z  ��       �L.  %/0123445�L  . 
�K�J�I�H�G�F�E�D�C�B�K  0 scriptlocation scriptLocation�J 0 myscript myScript
�I .aevtodocnull  �    alis�H 0 errormessage errorMessage
�G .aevtoappnull  �   � ****�F 0 apppath appPath�E 0 
scriptpath 
scriptPath�D 0 	posixpath 	posixPath�C 0 command  �B 0 results  / �A i�@�?67�>
�A .aevtodocnull  �    alis�@ 0 argnames argNames�?  6 
�=�<�;�:�9�8�7�6�5�4�= 0 argnames argNames�< 0 arglist argList�; 0 curpath curPath�: 0 	posixpath 	posixPath�9 0 apppath appPath�8 0 
scriptpath 
scriptPath�7 0 command  �6 0 results  �5 0 	errortext 	errorText�4 0 errornumber errorNumber7  p�3�2�1�0�/�. ��-�, ��+�*8�)
�3 
kocl
�2 
cobj
�1 .corecnte****       ****
�0 
psxp
�/ 
TEXT
�. 
strq
�- 
rtyp
�, .earsffdralis        afdr
�+ .sysoexecTEXT���     TEXT�* 0 	errortext 	errorText8 �(�'�&
�( 
errn�' 0 errornumber errorNumber�&  �) 0 errormessage errorMessage�> q�E�O %�[��l kh ��,�&�,E�O��%�%E�[OY��O)��l 	E�O�b   %b  %E�O��,�&�,E�O��%�%E�O �j E�W X  *��l+ 0 �% ��$�#9:�"�% 0 errormessage errorMessage�$ �!;�! ;  � ��  0 errornumber errorNumber� 0 	errortext 	errorText�#  9 ����� 0 errornumber errorNumber� 0 	errortext 	errorText� 0 programname programName�  0 x11environment x11Environment: � �� � �� ����%',
� 
cwor
� 
ret 
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT�" l�k  !��k/E�O��%�%�%�%�%��kv�k� 	Y hO�l  !��i/E�O��%�%�%�%�%��kv�k� 	Y hO�m  ��%�%�%�a kv�k� 	Y h1 �<��=>�
� .aevtoappnull  �   � ****< k     A??  +@@  3AA  >BB  JCC  Q��  �  �  = ��� 0 	errortext 	errorText� 0 errornumber errorNumber> ����
�	�������D�
� 
rtyp
� 
TEXT
� .earsffdralis        afdr�
 0 apppath appPath�	 0 
scriptpath 
scriptPath
� 
psxp
� 
strq� 0 	posixpath 	posixPath� 0 command  
� .sysoexecTEXT���     TEXT� 0 results  � 0 	errortext 	errorTextD � ����
�  
errn�� 0 errornumber errorNumber��  � 0 errormessage errorMessage� B)��l E�O�b   %b  %E�O��,�&�,E�O�E�O �j 	E�W X  *��l+ 2 4 .Macintosh HD:Users:willend:Desktop:McStas.app:   3 R LMacintosh HD:Users:willend:Desktop:McStas.app:Contents:Resources:launcher.sh   4 �EE � ' / U s e r s / w i l l e n d / D e s k t o p / M c S t a s . a p p / C o n t e n t s / R e s o u r c e s / l a u n c h e r . s h '5 �FF  ascr  ��ޭ