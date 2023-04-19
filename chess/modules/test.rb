


def moves
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
    #     horizontal_dirs.each do |h_dir|
    #         pos = [3,3]

    #         7.times do 
    #             new_pos = [pos[0] + h_dir[0],pos[1] + h_dir[1]]

    #             if !(new_pos[0] < 0 || new_pos[0] > 7 || new_pos[1] < 0 || new_pos[1] > 7)
    #                 potential_moves << new_pos
    #                 pos = new_pos
    #             end
    #         end
    #     end


            diagonal_dirs.each do |d_dir|
                pos = [7,7]

                7.times do 
                    new_pos = [pos[0] + d_dir[0],pos[1] + d_dir[1]]

                    if !(new_pos[0] < 0 || new_pos[0] > 7 || new_pos[1] < 0 || new_pos[1] > 7)
                        potential_moves << new_pos
                        pos = new_pos
                    end
                end
            end
    p potential_moves
end

moves