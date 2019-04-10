


for i in {0..10..2}
do
	echo "Numbers $i"
done

echo "Another Example"

for i in $(seq 1 2 20)
do
	echo "Numbers : $i"
done




INPUT_STRING=hello 

while [ "$INPUT_STRING" != "bye" ]
do
	echo "Please write bye"
	read INPUT_STRING
	echo "You typed : $INPUT_STRING"
done



