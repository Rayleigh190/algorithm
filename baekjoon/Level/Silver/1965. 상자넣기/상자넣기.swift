let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{ Int($0)! }

var dp: [Int] = Array(repeating: 0, count: N)
for i in stride(from: 0, to: N, by: 1) {
    var max = 1
    for j in stride(from: 0, to: i, by: 1) {
        if nums[i] > nums[j] {
            let num = dp[j]+1
            if max < num { max = num }
        }
    }
    dp[i] = max
}

print(dp.max()!)