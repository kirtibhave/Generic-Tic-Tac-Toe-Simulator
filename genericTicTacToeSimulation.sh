#!/bin/bash -x
echo "********************Welcome to TicTacToe Simulation Problem********************"

#CONSTANTS
readonly size=$1
ROW=$size
COLUMN=$ROW

#function is used to Start fresh by resetting the board
function resetBoard(){
	for ((row=1;row<=$ROW;row++))
	do
		for ((column=1;column<=$COLUMN;column++))
		do
			board[$row,$column]="-"
		done
			echo ${board[@]}
	done
}

#function is used to assign the letters to a player
function assignSymbols(){
randomChecksign=$(($RANDOM%2))
	if [ $randomChecksign == 1 ]
	then
		sign=X
	else
		sign=O
	fi
		printf "player sign is :%s $sign"
		read $sign
}

resetBoard
assignSymbols

