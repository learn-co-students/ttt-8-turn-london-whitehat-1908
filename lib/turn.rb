def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]}  | #{board[8]}  "
  
def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index) then
     return true
   else
     return false
   end
end 

def position_taken?(board, index)
   if board [index] == " " 
     return false
   end
     return true
  
end

def move(board, index, player)
   board[index] = player
end   


def turn 
  puts "Please enter 1-9:"
  i = gets.strip
  index = input_to_index(i)
  m = valid_move?(index)
  if m == false
    move(index, current_player)
  end
end
