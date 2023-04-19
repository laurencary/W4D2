require 'byebug'

module Slideable

    HORIZONTAL_DIRS = [
        [1,0],
        [0,1],
        [-1,0],
        [0,-1]]
    DIAGONAL_DIRS = [
        [-1,-1],
        [-1,1],
        [1,-1],
        [1,1]
    ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        potential_moves = []

        horizontal_dirs.each do |dir|
            current_row, current_col = dir[0], dir[1]
            potential_moves << grow_unblocked_moves_in_dir(current_row, current_col)
        end

        # if self.class != Bishop
        #     horizontal_dirs.each do |h_dir|
                

        #         7.times do 
                   
        #         end
        #     end
        # end
        
        # if self.class != Rook
        #     diagonal_dirs.each do |d_dir|
        #         pos = self.pos

        #         7.times do 
        #             # new_pos = [pos[0] + d_dir[0],pos[1] + d_dir[1]]

        #             # if !(new_pos[0] < 0 || new_pos[0] > 7 || new_pos[1] < 0 || new_pos[1] > 7)
        #             #     potential_moves << new_pos
        #             #     pos = new_pos
        #             # end
        #         end
        #     end
        # end
        potential_moves
    end

    private
    def move_dirs

    end

    def grow_unblocked_moves_in_dir(dx, dy)
        # pos = self.pos
        # new_pos = [pos[0] + dx,pos[1] + dy]

        # if !(new_pos[0] < 0 || new_pos[0] > 7 || new_pos[1] < 0 || new_pos[1] > 7)
        #     potential_moves << new_pos
        #     pos = new_pos
        # end

        potential_moves = []

        current_row = self.pos[0]
        current_col = self.pos[1]
        continue = true
        while continue
            if (0..7).include?(current_row + dx) && (0..7).include?(current_col + dy)
                potential_pos = [current_row + dx, current_col + dy]
                debugger
                if self.board[potential_pos].empty?
                    potential_moves << potential_pos
                elsif self.board[potential_pos].color != self.color 
                    potential_moves << potential_pos 
                    continue = false
                else
                    continue = false
                end
            else 
                continue = false
            end
        end
        potential_moves
    end

end