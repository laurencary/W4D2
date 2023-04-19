


def grow_unblocked_moves_in_dir(dx, dy)
    horizontal_dirs = [
        [1,0],
        [0,1],
        [-1,0],
        [0,-1]]

    diagonal_dirs = [
            [-1,-1],
            [-1,1],
            [1,-1],
            [1,1]
        ]



    potential_moves = []

    current_row = 3
    current_col = 3
    continue = true
    while continue
        if (0..3).include?(current_row + dx) && (0..3).include?(current_col + dy)
            potential_pos = [current_row + dx, current_col + dy]
            if self[potential_pos].empty?
                potential_moves << potential_pos
            elsif self[potential_pos].color != self.color 
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

b = Array.new(3){Array.new(3, nil)}

