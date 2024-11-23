let N = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{ Int($0)! }

var dp = Array(repeating: 1, count: N)
for i in 0..<N {
    for j in 0..<i {
        if nums[i] < nums[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(dp.max()!)