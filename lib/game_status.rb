# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS= [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |i|
    if i.all? { |index| board[index] == "X"} || i.all? { |index| board[index] == "O"}
      return i
    end
  end
  return nil
end

def full?(board)
  board.none?{|spot| spot =="" || spot == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  won?(board).each do |i|
    if i[0]== "X"
      return "X"
    elsif i == "O"
     return "O"
    else
      return "nil"
    end
  end
end