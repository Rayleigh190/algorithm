// 방법 1 : 홀짝
Int(readLine()!)!%2 == 0 ? print("CY") : print("SK")

// 방법 2 : DP
let N = Int(readLine()!)!

var dp = Array(repeating: 0, count: 1000)
dp[0] = 1
dp[1] = 2
dp[2] = 1

if N > 2 {
    for i in 3..<N {
        if dp[i-1] == 1 || dp[i-3] == 1 { dp[i] = 2 }
        else { dp[i] = 1 }
    }
}

dp[N-1] == 1 ? print("SK") : print("CY")