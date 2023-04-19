require_relative 'piece'
require_relative "../modules/slideable.rb"

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

#   protected

  def move_dirs
    moves(DIAGONAL_DIRS)
    # return the directions in which a bishop can move
    # a bishop can move diagonally
  end
end