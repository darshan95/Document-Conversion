##Added by Roja (05-06-12)
##Program to add separator in a hindi xml file for an english word to avoid font conversion
##'args' file is neccesary to add a separator.
var=`cat args`
for i in $var;
do 
    ./addingseparator.out $i < HND.xml >  hnd.txt
    mv hnd.txt HND.xml
done;
