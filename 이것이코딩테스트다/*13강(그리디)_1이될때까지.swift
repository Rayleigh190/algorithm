let input = readLine()!.split(separator: " ").map{Int($0)!}
var N = input[0]
let K = input[1]
var count = 0

while N != 1 {
  if (N%K) == 0 {
    N /= K
  } else {
    N -= 1
  }
  count += 1
}

print(count)
