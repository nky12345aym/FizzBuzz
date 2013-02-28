#!/bin/bash


#ここで変数
go=0
fin=0

echo "開始の数字入力"
read go
echo "終了の数字入力"
read fin

if test $fin -lt $go
        then
        echo "終了の数字が開始の数字より小さい。やりなおし。"
fi


for start in $(seq $go $fin)
#ふぃずばず判定 とかループとか
do
	#入力判定
	if test $fin -lt 0
	then
		echo "終了の数字が負数です。やりなおし。"
		break
	elif test $go -lt 0
	then
		echo "開始の数字が負数です。やりなおし。"
		break
	else
		#出力
		if test ` expr $start % 15 ` -eq 0
		then
			echo "fizzbuzz"
		elif test ` expr $start % 3 ` -eq 0
		then
			echo "fizz"
		elif test ` expr $start % 5 ` -eq 0
		then
			echo "buzz"
		else
			echo $start
		fi
	fi
done


