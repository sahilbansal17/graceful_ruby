arr = [[1, 2, 3], [4, 5], [6], [7, 8, 9]]

p arr.select { |arr| arr.length > 2 }.first

p(arr.detect { |arr| arr.length > 2 })