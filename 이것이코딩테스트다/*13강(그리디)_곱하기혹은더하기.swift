let input = Array(readLine()!).map{Int($0.wholeNumberValue!)}
var result = input[0]

for num in input[1...] {
  if num > 1 && result > 1 {
    result *= num
  } else {
    result += num
  }
}

print(result)