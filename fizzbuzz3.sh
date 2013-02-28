#!/bin/bash

#関数宣言
check(){
	#標準入力
	echo "開始の数字入力"
	read go
	echo "終了の数字入力"
	read fin

	#入力判定
        if test $fin -lt $go
        then
                echo "終了の数字が開始の数字より小さい。やりなおし。"
        elif test $fin -lt 0
        then
                echo "終了の数字が負数です。やりなおし。"
        elif test $go -lt 0
        then
                echo "開始の数字が負数です。やりなおし。"
	else
		disp	#ここから始まる
        fi

}

disp(){
	#再帰関数
	if test $go -le $fin
	then

		if test ` expr $go % 15 ` -eq 0
	        then
	                echo "fizzbuzz"
	        elif test ` expr $go % 3 ` -eq 0
	        then
	                echo "fizz"
	        elif test ` expr $go % 5 ` -eq 0
	        then
	                echo "buzz"
	        else
	                echo $go
	        fi
		

		go=`expr $go + 1`
		disp	#ここで再帰
	else
		echo "おしまい"
	fi
}


#ここで変数
go=0
fin=0

#関数呼出
check
