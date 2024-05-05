let count = Int(readLine()!)!
let nums = Array(readLine()!).map{$0.wholeNumberValue!}
var result = 0

for num in nums {
  result += num
}

print(result)