let n = Int(readLine()!)!
var p = readLine()!.split(separator: " ").map{ Int($0)! }
p.insert(0, at: 0)

var dp: [Int] = Array(repeating: 0, count: n+1)
dp[1] = p[1]

for i in 2...n {
    var min = 987654321
    for j in 1...i {
        let temp = dp[i-j] + p[j]
        if temp < min {
            min = temp
        }
    }
    dp[i] = min
}

print(dp[n])