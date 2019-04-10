


awk '{print $6}' dosya.txt

echo "Hello Tom" | awk '{$2="Adam"; print $0 }'

awk '{print NR,  $0}' dosya.txt

awk 'BEGIN {OFS="--"}{print $2,$4}' dosya.txt

echo " "
echo " "
echo "3. ve 6. satırların toplamı "

awk '{print $(($2 + $5))}' dosya.txt

echo "Sıra no ve 2--4"

awk 'BEGIN {OFS="--"}{print NR,$4}' dosya.txt

echo "Root user Time : "

awk '{ if($3 == "root")  print $8;}' dosya.txt


echo "print 2 colum "

awk 'BEGIN { print "Users and thier corresponding" ;  print "UserName And Path" ; FS=":" } {print $2 ;  $8 } END { print "The End"} ' dosya.txt

echo "upper level awk examples"

awk 'BEGIN {print ARGC, ARGV[1] }' dosya.txt

echo "awk parameters PATH example "

awk 'BEGIN {print ENVIRON["PATH"]}'

echo | awk -v home=$HOME '{print "My Home is " home } '

echo "Passwords"

awk 'BEGIN {FS = ":" ; OFS=":"}{print $1, $NF}' /etc/passwd

echo "Statements with awk"
awk '{if ($7 > 5) { x = $7 * 3 ; print x} else {x = $7 / 2 ;  print x} }' dosya.txt

echo "Average of Files"

awk '{sum = 0 ; i = 1; while (i < 19) {sum += $i i++ } average= sum / i; print "Average : " average}' dosya.txt

#awk '{sum = 0 ; i = 1; while (i < 19) if (i == 3) break; {sum += $i i++ } average = sum /i; print "Average : " average  }' dosya.txt

awk 'BEGIN {x = 100 * 100; printf "The Result is Type(e):  %e\n Type c : %c \n Type d : %d\n type f : %f\n type o %o\n ", x,x,x,x,x}'

echo "Math Functions"

awk 'BEGIN {x=exp(5) ; y = sin(180)  ;print x; print y}'

echo "String Funcitons"

awk 'BEGIN {x = "likegeeks"; print toupper(x)}'

echo "Istenilen satiri getirme"

awk '/root/' dosya.txt

echo "Own Function" 

awk 'function myfunc() {printf "The User %s Has some path at %s\n",$1,$6} BEGIN {FS=":"} {myfunc()} ' /etc/passwd

echo "Belli sayidan sonrasi"

awk 'NR > 15' dosya.txt

echo "DATE"

echo | awk '{ system("date")}'

echo " Space yi **  haline getirme"

#awk 'BEGIN {FS=" "; OFS="***"} {print $1,$2,$3,$4,$5,$6,$7,$8,$9}' dosya.txt

#awk /\n'BEGIN {FS=" "; OFS="***"} {for (i=1; i<=NF; i++) print $i } ' dosya.txt

#awk 'BEGIN {FS=" "; OFS="***" } {print FNR }' dosya.txt

#awk 'function myfunc() { for(i=1; i<=9; i++)  print $i; if (i==10) {print "\n"}  }  BEGIN {FS=" "; ORS="++"} {myfunc()}' dosya.txt

#awk 'BEGIN {OFS=" " ; ORS="\n\n"} {print $1,$9}' dosya.txt

#echo "karakterleri degistirmek icin"

#awk -F ' ' 'BEGIN {OFS="-*-"} {$1=$1} 1' dosya.txt  

echo "12 ile 15 arasi"

awk 'NR >= 12 && NR <= 15' dosya.txt

echo "Degerler arasi 5.sutun"

awk  'NR >=12 && NR<= 15 { print $5}'  dosya.txt

echo "10.satir 8. sutun " 

awk 'NR==10 {print $8}' dosya.txt

echo " ilk 4 satir"

awk 'NR < 4' dosya.txt

