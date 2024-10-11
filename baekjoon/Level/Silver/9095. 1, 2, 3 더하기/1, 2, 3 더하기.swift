let t = Int(readLine()!)!
var array: [Int] = []

for _ in 0..<t {
    array.append(Int(readLine()!)!)
}

var cache = Array(repeating: 0, count: 11)
(cache[1], cache[2], cache[3]) = (1, 2, 4)

func dp(_ n: Int) -> Int {
    if cache[n] != 0 {
        return cache[n]
    } else {
        cache[n] = dp(n-1) + dp(n-2) + dp(n-3)
    }
    return cache[n]
}

for a in array {
    print(dp(a))
}