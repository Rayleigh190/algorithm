let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{ Int($0)! }

var dp = nums
for i in 0..<N {
    for j in 0..<i {
        if nums[j] < nums[i] {
            dp[i] = max(dp[i], dp[j]+nums[i])
        }
    }
}

print(dp.max()!)