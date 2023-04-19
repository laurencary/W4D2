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
        if self.class != Bishop
            horizontal_dirs.each do |h_dir|
                pos = self.pos

                7.times do 
                    new_pos = [pos[0] + h_dir[0],pos[1] + h_dir[1]]

                    if !(new_pos[0] < 0 || new_pos[0] > 7 || new_pos[1] < 0 || new_pos[1] > 7)
                        potential_moves << new_pos
                        pos = new_pos
                    end
                end
            end
        end
        
        if self.class != Rook
            diagonal_dirs.each do |d_dir|
                pos = self.pos

                7.times do 
                    new_pos = [pos[0] + d_dir[0],pos[1] + d_dir[1]]

                    if !(new_pos[0] < 0 || new_pos[0] > 7 || new_pos[1] < 0 || new_pos[1] > 7)
                        potential_moves << new_pos
                        pos = new_pos
                    end
                end
            end
        end
        potential_moves
    end

    private
    def move_dirs

    end

    def grow_unblocked_moves_in_dir(dx, dy)

    end

end