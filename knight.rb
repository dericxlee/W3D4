require_relative 'piece.rb'
# require_relative 'board.rb'
require_relative 'stepable.rb'

class Knight < Piece
    include Stepable

    
    MOVES = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]

    
    def initialize(color, board, pos)
        super
    end

    def move_dirs
        MOVES
    end


    # def move_into_check?(end_pos)
    #     row, col = @end_pos

    #     MOVES.each do |sub_array|
    #         if [sub_array[0] += row, sub_array[1] += col] = k[pos]
    #             return true
    #         end
    #     end
    #     false
    # end
end