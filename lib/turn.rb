def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
	return user_input.to_i - 1
end

def valid_move?(board, index)
	#in a space where there isn't another character
	#on the board
	# index.between?(0, 8) && position_taken?(board,index) == false
	index.between?(0,8) && !position_taken?(board, index)
	# 	return true
	# else
	# 	return false
	# end
end

def position_taken?(board, index)
	# taken = nil
	# if (board[index] == " " || board[index] == "  " || board[index] == nil)
	# 	taken = false
	# else
	# 	taken = true
 
	board[index] != " "
end

def move (board, index, character = "X")
	board[index] = character
end

def turn(board)
	puts "Please enter 1-9:" #ask for user input
	user_input = gets.strip #take input from user and delete whitespace
	index = input_to_index(user_input) #update index by putting the input into index as an integer -1
	if valid_move?(board, index) #check - is it a valid move?
		move(board, index) #if so, input the move (no need to state character as it will default as not being there and we take the value of X)
		display_board(board) #show the user the updated board
		return turn(board)
	else
		puts "Error, wrong character entered"
		return turn(board)
	end
end
