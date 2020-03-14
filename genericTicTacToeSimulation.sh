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

resetBoard

