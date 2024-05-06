let count = Int(readLine()!)!
var nums: [Int] = []

for _ in 0..<count {
  nums.append(Int(readLine()!)!)
}

nums.sort()

for num in nums {
  print(num)
}