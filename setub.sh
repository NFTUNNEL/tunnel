#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYΎ�y 
�{�@�����������V��|�@ 0 0 �.ޚ�|����}w�7.�3k+Vos������=u^޾���U�2���+`��{����g�$$v����)�n��3ۗY�G�lY`l+a�ME�]:[1��m��)�l�F�ɐi�2i�4��M'���4�S̚m������T�SC��2y   4�)��SѢOLI�O)�=@����4�!�    D!2Q����<���@��� h   M  j	5 bh���Jhɓjz��4�C i�@ @   ��L��#LF����	�=�L�RzOS�l��<�=C@d@� �! @�24#L��M	�=M&�S��F���04 y@�=@1M]ASHih��?��g�կ����[e�ZϨ�?s�����Owž��M�R@�:��Fz=�}	¿�v�/���6��ET����r��J�~U[3��\w�kZ�^Ui�>�	Z��A����$>���VXb��G�(JL5���}-'�쇀ٙ0�$
0q��C���Y}����az%�:�?.r��Ei���Gl�:)P�<�
���
�4e:�����vK�5�z�MW)�{U��t�h�$� m w���]�}j��g� �}�}��f�F�QF	��G�ME uWr�} >�B�=���)9BT�m����]�Ïk3�Q"/�����k��t�tq��U?D�~v��n���?o\�;L��i� d`��ǰ�����,n��V�cV������O3v�������1��#�#��*'Ո*!a7���Q��o�I>B:�n�� 6�������Yw! 5��}��R��V�Ӽ��+�j�����ϴ��J/�wשͪ�@�#���W)�e�<	����)	$�5T޵��򖞫�y�\�&��'9�m�ZִgҴ�5�ee��5�o�-�0�m[ֺ��;6���p����&�K�,�f�v,蟘QDM^�M.�v`��6����y{z��~}Y'�1���,(�M.�EN.zz�wd��ȴ,��rw@�c�6@�h��?,��g��*Y�;���Uf���>�q��0�m67������Ř|��ʸulWq�j��u�W�ok���*1*� ?d��,�[(�UPP�ff��	���3��;T�9dT�z��7 ����	���f��r��W.��i礱B#������������d�L=i>en���b��
�K�pu�/��~;�G˨��E� T�؆wT+f&�g������+Ym����Y�� ��1�Y����tV��Z��6p�;�B;�ba嫑f�^����^	v.���MfAO�x�]�\�<H� ��MbƬ.?͡�X�x_isC�0��c ��Ԓ?����h����$H�H�*�C���j�m�Ę`A�I�:Zvw@=�C��_�͆=gz�� ��D ��)��,ͱV�k�YZ�����q��HŒw��F� �e��́J�����E�k`���
�Y2gb�T:��ЁNa�@���Q�'7}sh�۞�HG�H˅��h��$j��o���U+da D����񙪝i�	��^��Fe�x��f"k;w8�]�*����{df�a��{�l��˸�d}�������&5�!Nv}WdC�>%#��&n����;o;<�P�^�X�Pnݶ��-v2�� �����/�F�r�yE�����)3�����R؍��-�%�W*� ��N�W�#��6��nP88Cp�+�ldS:8�ѷ9:��p��v���Bb�+գ\3���{u�BdU�5T7���3��kS�N�X���1=��}�Ԅ������㈋-�T�c~{R�DCW��7���uI�v�N;��$?�C`��m˽�-j� �w��[�h�|w�1�vec7�����V�Î��@@ �Ar(ٸ1���a
�\1l�Sd����#������v�Q���ĭ�t�@į�<c;�RH
ͬ
',e�7n�8Q�ֱ(��7��Ɣ٪0���%r����ֱ��]���6'�������kɚy�Y���gֹ^	%ؒ����I�eH4)�"1�\~(h��b(���%T�Cet�VvL4��(,Ƌn��irC.�:aK��"}�����*˹d���KB�'}�$]:ᔂ"�*g��C��V� ����J(��}.� �b/�hn#�]jp[�^-�������� u�H�Q�ʨ+�n6�67o�b���W�:�gH�*,�:�c*<]���hd�Ɋ5����w��e��l��	���B9��c�M�f�j��Z���.�F}���0ݦ�.1�9�� P@d+�B��B��Jԫ���/OU"�cA�������(<l���S�񫇤�d�	�+�sd��Egq&r%��G�)G��ty4�^Պjl7^'2�qݸw�Ap�	��U_�2p��6�17�Y:Vzj���|Mp�U
�UH�"H�|c��ay��e������Y� �X��SQ᜾O�I'�)��J#$Y��[2�A������	%�P��+�ˡ�ogC��xӄ�4]6ʩA�!�@�@�%0�(E�������n����2�QSbn�M�1B�������#D�ϕ��(���i9����BM^/����z����g5rNɀ��`�%}\�W,!}���S!	 �$���I�65���0Ģ}2a�T ���ؓ��/1!�#U;�R�����F ���(w��:�w�s�D�̐L��7�h���z.-ӯ����Nu�_/����Y���7��^���#*b	�!/7���\�W�	.Dt��
�8?���S�0{��� ���uQ.��x�����rֳ�����1۳=H��M*�ڨ�u���|� ��~>I9�8~"�<��-�ܨPt�gmg��=4�gۤ<�=��$�e�n䭮�T���.�q��������nG�w���蟦^�X\Cv�FL�w�I�%�z�e�����5C�<W+�fj�D�3�^F�X���j�a��ai�;@+�8�r�)L&�x�"��5��A��n�N��"^;Fl�Ѷj��%fm�"�c�4w��Up,��\�)��|�[]5'��xƜ�\/A�@�6�R���ỖhQC�Ъ��O]�WR���E该"ݶ��D�ڀ��1 �R�ٵ�� 3��m��P�	M�=#甉M��_Bc� ��Z�EC�!yM�&N�Me�)���0�R�Ұa�ZcNz[Z�x�C���%U�������V��;�C�y`K����.�����9&�=�޹3�#�A��.*�mt+��wy}O	�g�$�H�x�W���;��M~n`��Ì2�$#�8��-0щ�4/yX-  ʢ��,Q`��ŋ�sV�y���f/&0!Z�%��k�f�\:�Z��tQ%���q�K+(�̆�@��qt46��os�UrQGr����$QX�۴��-�7�iV� @��j��N�0Ķ3-*\U��L��R1�he�oT�jJǻ%�(Pd��0��"���2�� �$O+�Fل��Cm��q/�\u��S"�5r��:��!���8��I6����qΰ����;$M��V2	�-F,3"s\�kx�u��1�n�OG��^�s����?�]J��a���'QP����J֯8��t�����К*�
��p�.$�k�F�0���2����.�������Tj��b�U�C��r@���*������]#����˲C
�[��t�A
��S ��B� *	��ؠy2�2�I�� ��}�YM����Kh u�&h��%�5�Ҟx=;�A��t4V,����|/f�C���Σ��ຶ��:��+K�c���|F/��C=I��U��}bc'-��wTH#�F9�X�m�15m��Ma暜ܬ,��g?��<
��{���t-bz+�T�C��~DƢ^DM����U�M�#�΂�u�i�E�㓲Q� �������J���〄8Q��EvPOV����ĺ_b����sy�V�xx��!�k[����s��[l�=��q�׌��$06��o�k�q���Y�!"<���#�BSY ����󲽨߭@l>�`�,�b�L�jr��R
ȓ:��K��ހ��~�'�(w�|	"D� �E/֢NENjBhh�RZ��xO�,yN��8��$�_�{�C:!0���7tu����}�5�����]���O�*.����O|Z ���@��k46��_�,:��c�����}Vr�����3@n]�P;�4�f\��?�+���B��G���+�h��Ȕ��X��Áˠ��=�n"%>>���Q����+j�� �<1����P��W$)�����u~Yo��*@O��J��\2i��@�8b���aʈ���c�A+H����܎��0��%琑�8����L�����)�j$z���ȸ1�o�%�n�V�DF8��4l������`�lV����:ѷKD<���]^2׏I%�h�����A.�Pz
Ij��*��lW��bh��Dbڈܭ��F�bQ��G�-ԺCP����v0�
��	�hfv�J�ၴ�$�����{-�3�glQA��P��.���{Xd��eW�2m�z>�Ƶ�g��B��Y�cD�#R
�YEdƆ����-@��g�Dh�L�]wp���f�#W2�������|��>����R������_�����dk�����z�w~n#�8�qYe�5D�N�dy�A����P�_<W4����}̘zS=���[u�OQ��R60�ųy�j,ca���ޥ�fƨ5������7X^���^0(o���o��>���~�8�����s���sm���GXL�H�6�� D�gN���y�욘kA�D�CN��2[��P̫�`G^!1�-PF�!���V�?��;J^#Vc�!�2� M�ia���(=DN�Qn�m(E�c�GR.�gcA�+:m8}��X��m~�8�i�ljE A&y$�I>�=3����Wƺ��N�{��Z�/��0'ㅈc�|�>%ܟ(����;���HH0��*}}�����>L���8�[04�o��D��p7D��e�`�x= q�� 
�����L���w���jW67D�y�K����kEu�əI�<{��]���D>�Za����؎�0��K��C��E)&�����d��j>� ��)&X�cC���h*U��D ��fp�Ѽ�s�vюR�$�؂�~�SA�é46Zv
"�*×�S��"��S���"���N�ʱ<�t�ߨެa�1�������'�&�!�UJ�$0�=��+��4�}e�G�!�o��YԴwx�$.I��~6%������_�P6�#:����*y��pG�Ӽ�@i��T�����s
�eR��n���0�P�Ѡ�r2d�bY�lCӕ"�#�Ky��Z���}yyu����U�:�H�K�'�����1AƬVݎ�0����!ke Tdޔ�R����D+�O.�����U`Fҁ�����a�#1�e���Ej�
	��dBަ֖�q��XҌi��\ή����[��J���:	��R�&1��]Xf�2��I"�i������&����j���/P��-$�\-�Ԋ�d`U�WY�_�i���MZ']���n�_4��3S�0/$��"Q�	��XkXR��1�R�H�'+eL���q���A14m5tJh\RD�ݩT:�#�dЂv~���Fѝq�OL	 �چ����V��S7mA���/�t���(N`�Ժ^.'ehg���8�}b��	{!����2Me��b�Z.���}m�c�`��8�f��H�@b�a��2��l`���՘L����j7%E�h#� _��]�z��ו'I�X0+d��)�Re>���Q�0�i��������zD&w�W��P͈S	&�g�����~����
�zU-�eW��<��}�x�{;�p���g[��"-�ׁ�Q؄I�]�X�z@��6X6��S�7Qe�1�K���@�����d�N<!��j�i��o���N�V��*�)�(yxΙ��3Vr�햩��L2.�tAsR�Eg���W{량 ���fY��a�&��*��9�,����������}� >HX6��9zm��A$I ����Cо��̄q��#�(&: (I�G8�,�.�@�el�9BA`��Kj�QD��$�-cI�#��0W*�e����	S��+�&qp���նZd~�5L��T vh���K��]AR�"Bε�$$�r��舤�.3��.r���*$�$ʴ"I�����v�`�_ӡ�'�ɘh�hw�5k�ňv�4��Eb�<vc��.�����&n�fefΎp< �p��C����*�h*T^�l��5I'L�en	�#�t���ZA�쳮�x�POAI�*)qyrr�飋��L��"�ڻ���ڝ��xu���HHB�$J�viJm�J��'*�1�#�
�]�.ĵ &HZ`v���.�Ǯ�Xm���}�Ay/Y*��e�
$��U[+(Xn�n{�&P�BA6�2L'T�Z���+ _��#9~�B�7�B��6�)>y��M��w��∨���4�f\(
hh1�"mC��B^�e��2D�5��8��Ru�"D���.n%��j6P�\�2+5�d��y �Y8A�v[���I�>'��!���L�w�jb�K�X��d��z�J�`I^0��K��-��P� ���v8Q�~R�dc�;�(���h6�s�h �(*X_~N=�ұ!�	�6�6b(�9��q�t�9{�2(3A�*�FDΎ� ʙ "djh����5{���Ї�v`;��&����z V�n�X;�G`5�#�� ٮuP�nI��;�����IU�FH$�����A�͂�iE;�/fd�!��8�ȪBB$��Vqu٪R�xO ����U�R�n���n����J�SyT�W�:�+ʒ:l���G;��:=���`W���$M}���V�2�`��}��w��]���4B�%��Dh��%�-�$����P�W1f7l�O�@�:U��B���yɅku��3=W]�	�P��$�0�QR�]�oB�$r̈VjLb�Y!\��-!��i,P���e��+�Ɖ�)@��Z�=Oe��A�ĬHH�ZI@�f�$U|��PQ�`�+7����<l\�5tnSVǷh���	�	�w�:k��g2��ͦI��$�Y SaR���7����i,[�\�.�"�Y�b����jV��~����{���I���Ί�%�ԡ��P,��F0!yP�lt�c+��d��ؐ���P���R&� ����!ƚ`�Te�RC�q	B���h-�]-���}��6���:M��T� k�*0�lhsd X���a�j� �d�6�Z�<ɥJi�lAeeB
��!v�	k�Ė����$`ZI�,3<���\��y������[�R��R���2����r=�?�3�5�x��*�3kH�l�WP�]S�l�q:�f��U��}x�)����0�l������F.�DA����+ ��B:���M(����@\e��a�4G`Ժ���P	D�$�@jh)�Jͣf��%��8`8�bH�!#�A>T c���M�N�+�.�<�J6��8e�2kE�I��&8����a�C@x�V����d����N�d%���j��)�V� Ay�0,��4�r� �J�,��{�Z:,�F� �Y6��?P�Ұ�W�r�KUS�o+�I���P�_ m�cq�BP�V�i�|V#�.8�D��#j(c
��Eh:�#����L�l�v�o��@jA��X-�UB��������Jݪ/�E~(4r���`M��C�%*��rq���'\���(����o�W���J���1{#iPZ~$~�C�	B;f��Q�Y�vNq%�0"�3&\�~�A�����:�����'0y�:H,��N�;�.�&A�H��G��
<S�5�U0.�^�e�hhV��ވ,�e��m�..&�Ʉ�&�Q����$Ś�ED[q�-O���?em���Nǭq�J�a�M��*����`g�@H���[E�[�pth��Ɖ����-���o�T��V%����[�Y=��Ki!�Ć�ˍ�zE"V�A���ڍmq��l�ȉ���h�G�c��������<g|6�)%21TcM*cLfH8hh��ae]ҧj��nR�*�"��Y-7d�q	��ڪ4�\x�8�텷�� so$�Ԋ�=�&~t����-J���r ��A
yᦝ�޼��{��
Fqi��j�������ԑ��YU~R�$�6��%���Ϊ��I�܍}��&����A]%C���a�n�`:���f��iť��H�>��c욾�&�
r�0�g(�Ȃ�� �
�ݼ��!��m��]h� P��I@�!*B��)�#�-$��J��X�k�8�?����N~1�J�2��U"�:�Zj��{.5�r�I�a�W+�R����ٔcQQ"��d-�Ğ������]*�pŚH&4 e�����P�h"�b�[�k��
���#�,(`�X�-/�W��x�n�dA�]�?��B���1q&dk������Z
�`��XyF Loy�Bċv�Q[�P�E�ik�o�S}�j��5#��r��A��ڋ#��_h���EQ
Yy( P&��5��� ���:5���&y��rb*�#��3i��2C=��ﰮ�r�^@��F��Q�#@+XD�v�`K\2���5$<&A�BG
�DV$�$s�g��D�k����hۧUņJDr*d�����8�֗����:%��¦[� ��!�4� 
"�wwl��j� �B�P�t��.�*JJ�� �A=U�	D����Cw���AF`1��	�k�C�-I�pr���pᦐu�g
�C�؊�QfdPH�{l��!8�<3
-lZFR�&H\���k6{�:(̎Śn�1�e�!EW�R:a:������ջ���- �*��u�ҐB��XY��1�!)nl����/PF-�+dBH��p�2���2&6\B����B�v�-T�
@"���D�h(X��6�Ppd����z�� PШ�4�ϬSU��b�y�A�P�Pi�6����alCBZr�w����V����d�;K$.$�nο!9�y�!���\�����"��5iǣ�f�*Ff@���&��"�R�j�B����0�LF<NhK��ޒ-4[�f
�d^H�fY�������֤Ɔx�A�ҡY�o@��\&X(�A!ԭF3H@V��eS#�s%ݼX�x��XӁ��u�ufӨ�v�8���'X��>#��0��B�j\�$�r@��~�F��gR�܍WTFB�xL�pTe1	n�h��3��,��@|�ÿ��Xyw�~��Ɛ�L�T����u2�	+�͇!֡��!�2�ն��`��R��we%b?[(�Z� h�4�`ء���w���`k;I�]�� q�{��-���F$��ɺ��[Q��5�k��F�ƭR91��Η�g�����]B�I(9��T���ޥā�Q��!�	���Ў�\w,���� ���}"2X�iM�����4�g^�MW

N�t\� �� Tgy�\M%�p�
����
�k�>�$�B[�1Q2d�����C�C�`ș�}�-�7`s-O���$$��g��Pܺ%R����x{'���y~O_��h�Хl�Ԥ�t9o��	��Џj�ȕE����0�퀈�\�l�Z�N����z�w�����~Z����X�?@D�?�� �
�Y �J~�U�K�O��!=Y`X�3sG����:o?�-�z���
���g6�m�-�MԳ`��� !�A>��#�	&���r�B,��{1L���bF��b4	^�;v�9�l`�A3�F �E��ؔ5�]�`�`o�]��BC:;�