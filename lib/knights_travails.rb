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

  result

end

p eligible_moves([3, 3])
p eligible_moves([0, 0])