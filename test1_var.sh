str="abcd"
str1="hello, "$str", !"
str2="hello, ${str}"
echo $str $str1 $str2

str3="abcd"
echo ${#str3}

echo ${str3:1:3}

str4="this is an test string"
echo `expr index "$str4" es`

arr=( 'a' 'b' 'c' 'd' )
echo ${arr[*]:1:2}

