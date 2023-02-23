module Slideable
    HORIZONTAL = [[-1, 0], [0, -1], [0, 1], [1, 0]]
    DIAGONAL = [[-1, -1], [-1, 1], [1, -1], [1, 1]]

    def horizontal_dirs #=> [0, 0]
        horizontal_moves = []
        HORIZONTAL.each do |subarray|
            horizontal_moves.concat(self.grow_unblocked_moves_in_dirs(subarray[0], subarray[1])) #=> -1, 0
        end
        return horizontal_moves
    end

    def diagonal_dirs
        diag_moves = []
        DIAGONAL.each do |subarray|
            diag_moves.concat(self.grow_unblocked_moves_in_dirs(subarray[0], subarray[1]))
        end
        return diag_moves
    end

    def move_dirs
        self.horizontal_dirs.concat( self.diagonal_dirs)
    end

    def moves
        self.move_dirs
    end

    def grow_unblocked_moves_in_dirs(dx, dy) #=> stop when out of bound or another piece
        row, col = @pos
        x = dx
        y = dy
        unblocked_moves = []
        # [5, 0] + [-1, 0] + [-1, 0] + [-1, 0]
        loop do
            if board.valid_pos?([row + x, col + y]) && @board[[row + x, col + y]] == nil
                unblocked_moves << [row + x, col + y]
                x += dx
                y += dy
            # elsif @board[[row + x, col + y]] != self.color && @board[[row + x, col + y]] != nil
            #     # @board[pos]=(color)
            #     unblocked_moves << [row + x, col + y]
            #     break
            else
                break
            end
        end
        return unblocked_moves
    end
end
