def turn(board)
    puts "Please enter 1-9:"
    number = gets.strip
    index = input_to_index (number) 
    if valid_move?(board,index) == false
        turn(board)
    else
        move(board, index,"X") 
        display_board(board)
    end
end 

def display_board board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
display_board(board)

board[0]="O"
board[1]="O"
board[2]="O"
board[3]="O"
board[4]="O"
board[5]="O"
board[6]="O"
board[7]="O"
board[8]="O"

def valid_move?(board, index)
    if index.between?(0 , 8) && position_taken?(board , index) == false
        return true
    end
    return false
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == nil || board[index] == ""
     return false
    elsif board[index] == "X" || board[index] == "O"
     return true
    end
 end

 def input_to_index (user_input)
  user_input.to_i - 1 
end

def  move (array, index, value = "X")
  array[index] = value
end