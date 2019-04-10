

echo "Write a number : "
read number 

if [ $number = "1" ]; then
    echo "Number equals 1"
else
    echo "Number does not equal 1"
fi



echo " "
echo " "
#echo "compate numbers"

#echo "Write number1"
#read n1
#echo "write number2"
#read n2

#if [ $n1 -gt $n2 ]
#then
#	echo "Number one is greater than two"
#else
#	echo "Number two is greater than one"
#fi

#input="/home/baris/asd"

#for i in $input ;   
#do
#	if [ -f  "$i" ] 
#then
#	echo "$i is a file"
#else
#	echo "$i is directory "
#fi
#done

#input=~/*
input=*
format=*.sh
for i in $input;
do
 if [[ "$i" == "$format" ]]
 then
    echo "$i is Shell"
 else
    echo "$i is directory"
 fi
done
