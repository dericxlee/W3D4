require_relative 'piece.rb'
# require_relative 'board.rb'
require_relative 'slideable.rb'

class Bishop < Piece
    include Slideable

    def initialize(color, board, pos)
        super
    end

    def move_dirs
        self.diagonal_dirs
    end
end
