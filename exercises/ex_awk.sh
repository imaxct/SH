#!/bin/bash

#字母出现次数统计 

echo "Usage `basename $0` filename letter1 [letter2]..."

#echo one two three | awk '{print $1 "\t" $2 "\t" $3 "\t" $0 }'


echo

FILE_PARSE=$1

count_case=0

INIT_TAB_AWK=""

shift
for letter in "$@"
do
	INIT_TAB_AWK="$INIT_TAB_AWK tab_search[${count_case}] = \
	\"$letter\"; final_tab[${count_case}] = 0;"
	let "count_case++"
done

#echo $INIT_TAB_AWK

cat $FILE_PARSE |

awk \
"BEGIN { $INIT_TAB_AWK } \
{ split(\$0, tab, \"\"); \
for (chara in tab) \
{
for (chara2 in tab_search) \
{
if (tab_search[chara2] == tab[chara]) { final_tab[chara2]++ } } } }\
END { for (chara in final_tab) \
{ print tab_search[chara] \" => \" final_tab[chara] } }"

exit $?


# awk
# "BEGIN { $INIT_TAB_AWK }  赋值
# { 
# 	split($0, tab, "");     分割文本, 分隔符为"", 即分割成单个字母
# 	for (chara in tab)		寻找与对应字母相同字母, 统计个数
# 	{
# 		for (chara2 in tab_search)
# 		{
# 			if (tab_search[chara2] == tab[chara])
# 			{ 
# 				final_tab[chara2]++ 
# 			} 
# 		} 
# 	} 
# }
# END { 					打印最后结果
# 	for (chara in final_tab)
# 	{ 
#		print tab_search[chara] \" => \" final_tab[chara] 
#	} 
# }"