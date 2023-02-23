module Stepable
    def moves
        row, col = @pos

        valid_moves = move_dirs.select do |sub_array|
            if @board.valid_pos?([sub_array[0] + row, sub_array[1] + col])
                [sub_array[0] += row, sub_array[1] += col]
            end
        end
        return valid_moves
    end
end