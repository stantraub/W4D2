require './piece.rb'

class Board
  attr_reader :rows
  def initialize
    @rows = Array.new(8) { Array.new(8)}

    @rows.each_with_index do |row, y|
      if y.between?(0,1) || y.between?(6,7)
        row.each_with_index do |row_el, x|
          self[[y, x]] = Piece.new
        end
      end
    end
  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].nil?
      raise "There's no piece at this position."
    end

    if !self[end_pos].nil?
      raise "This piece cannot move to that position"
    end
    
    
    self[end_pos], self[start_pos] = self[start_pos], nil

  end
end 

board = Board.new
board.move_piece([0,0],[0,1])
p board.rows