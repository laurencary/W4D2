require_relative 'piece'
require_relative "../modules/slideable.rb"
require 'colorize'

class Queen < Piece
  include Slideable
  

  def symbol
    '♛'.colorize(color)
  end

#   protected

  def move_dirs
    both_dirs = HORIZONTAL_DIRS + DIAGONAL_DIRS
    moves(both_dirs)
  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  end
end


# Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!