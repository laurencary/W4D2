require_relative "piece"
require_relative "../modules/slideable.rb"
require 'colorize'

class Rook < Piece
    include Slideable
  
    def symbol
      '♜'.colorize(color)
    end
  
    # protected
  
    def move_dirs
        moves(HORIZONTAL_DIRS)
      # return the directions in which a rook can move
      # a rook can move horizontally (across rows and columns)
    end
  end