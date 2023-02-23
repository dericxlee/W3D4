require_relative 'piece.rb'
# require_relative 'board.rb'
require_relative 'stepable.rb'

class King  < Piece
    include Stepable
    MOVES = [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
    

    def initialize(color, board, pos)
        super
    end

    def move_dirs
        MOVES
    end
end
