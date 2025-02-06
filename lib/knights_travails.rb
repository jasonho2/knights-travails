def eligible_moves(input_arr)
  x = input_arr[0]
  y = input_arr[1]
  result = []
  
  result << [x + 1, y + 2] if x + 1 <= 7 && y + 2 <= 7
  result << [x - 1, y + 2] if x - 1 >= 0 && y + 2 <= 7
  result << [x + 1, y - 2] if x + 1 <= 7 && y - 2 >= 0
  result << [x - 1, y - 2] if x - 1 >= 0 && y - 2 >= 0

  result << [x + 2, y + 1] if x + 2 <= 7 && y + 1 <= 7
  result << [x - 2, y + 1] if x - 2 >= 0 && y + 1 <= 7
  result << [x + 2, y - 1] if x + 2 <= 7 && y - 1 >= 0
  result << [x - 2, y - 1] if x - 2 >= 0 && y - 1 >= 0

  result.shuffle # switches up which path the knight will take, otherwise it will follow the order in which the result array is being appended to above

end

#p eligible_moves([3, 3])
#p eligible_moves([0, 0])

def knight_moves(start_arr, end_arr)
  if start_arr == end_arr
    return [start_arr]
  end

  queue = [[start_arr]]
  visited = []
  num_moves_to_finish = 0

  # breadth first search
  until queue.empty?
    current_path = queue.shift
    current_position = current_path.last

    # skip this iteration if current position has been visited
    next if visited.include?(current_position)

    visited << current_position

    # end condition, print out all spaces
    if current_position == end_arr
      puts "You made it in #{current_path.length - 1} moves! Here's your path:"
      current_path.each do |arr|
        p arr
        num_moves_to_finish += 1
      end
    end

    # add all eligible moves to the queue
    eligible_moves(current_position).each do |arr|
      queue << (current_path + [arr])
    end

  end
  num_moves_to_finish - 1
end

#puts knight_moves([3,3],[4,3])
#puts knight_moves([3,3],[0,0])
#puts knight_moves([0,0],[7,7])