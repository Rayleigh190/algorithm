let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map{ Int($0)! }

func dp(array: [Int]) -> [Int] {
    var cache = Array(repeating: 1, count: N)
    for i in 0..<N {
        for j in 0..<i {
            if array[i] > array[j] {
                cache[i] = max(cache[i], cache[j] + 1)
            }
        }
    }
    return cache
}

var upCache = dp(array: A)
A.reverse()
var downCache = dp(array: A)
downCache.reverse()

var maxResult = 0
for i in 0..<N {
    maxResult = max(maxResult, upCache[i] + downCache[i] - 1)
}
print(maxResult)