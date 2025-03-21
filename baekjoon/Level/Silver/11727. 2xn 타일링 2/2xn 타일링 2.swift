let n = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 1001)
(dp[1], dp[2]) = (1, 3)

if n > 2 {
    for i in 3...n {
        dp[i] = (dp[i-1] + dp[i-2]*2) % 10007
    }
}

print(dp[n])