let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{Int($0)!}
nums.sort()

var result = 0
var count = 0

for num in nums {
  count += 1
  if count >= num {
    result += 1
    count = 0
  }
}

print(count)
