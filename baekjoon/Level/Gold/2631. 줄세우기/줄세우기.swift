let N = Int(readLine()!)!
var people: [Int] = []
for _ in 0..<N {
    people.append(Int(readLine()!)!)
}

var dp: [Int] = Array(repeating: 1, count: N)
for i in 0..<N {
    for j in 0..<i {
        if people[i] > people[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(N - dp.max()!)