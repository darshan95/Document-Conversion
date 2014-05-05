#########   To convert WALKMAN-CHANAKYA to WX Notation #################

./xml-correction.out < $1 > $1.tmp
./moving-Q.out < $1.tmp  > $1.tmp1
./get-full-char.out  < $1.tmp1  > $1.tmp1_1
./making-full-char.out < $1.tmp1_1 > $1.tmp1_2
./mapping_Kritidev10_to_Unicode.out < $1.tmp1_2 >  $1.tmp2

./nukta.out < $1.tmp2 > $1.tmp3
./full-char.out < $1.tmp3 > $1.tmp4
./order.out < $1.tmp4 > $1.tmp5
./reph.out <  $1.tmp5 >  $1.tmp6
./anusvar-movement.out <  $1.tmp6 >$1.wx
./wx_utf8.out < $1.wx > $1.utf8
#./canonical_form.out   <  $1.wx_tmp > $1.wx_tmp1
#./replacing_canonical.out < $1.wx_tmp1 > $1.wx
#####################################################################
