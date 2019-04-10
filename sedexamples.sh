

#sed 22,29p dosya.txt

#delete last line

#sed $d dosya.txt

sed G dosya.txt


sed 's/burcu/burcu_bau/' dosya.txt


echo 'List of users'

sed 's/\([^:]*\).*/\1/' /etc/passwd


echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'


sed '1,5 s/baris/bilal/' dosya.txt

sed '15,$ s/baris/bilal/' dosya.txt


sed '5d' dosya.txt

sed 'G' dosya.txt

sed 'G;G' dosya.txt

sed '/bilal/G' dosya.txt

sed = dosya.txt | sed 'N;s/\n/\t/'

sed -n '4,6'p dosya.txt

sed -n /root/p dosya.txt

echo "Replace user to admin"

sed -i '5!s/user/administrator/' dosya.txt

echo 'list of which rows have a bilal'

sed -n '/bilal/p' dosya.txt

echo "5. ile 10. satir arasi geliyor"

sed '5,10'p  dosya.txt

