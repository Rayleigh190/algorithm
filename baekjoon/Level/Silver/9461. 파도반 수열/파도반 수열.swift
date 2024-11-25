let N = Int(readLine()!)!
var dp = [1, 1, 1, 2, 2, 3, 4, 5, 7, 9] + Array(repeating: 0, count: 90)

for i in stride(from: 10, to: 100, by: 1) {
    dp[i] = dp[i-2] + dp[i-3]
}

for _ in 0..<N {
    print(dp[Int(readLine()!)!-1])
}