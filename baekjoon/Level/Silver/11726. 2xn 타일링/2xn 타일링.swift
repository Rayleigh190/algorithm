let n = Int(readLine()!)!
var cache: [Int] = Array(repeating: 0, count: 1001)
(cache[1], cache[2]) = (1, 2)

if n > 2 {
    for i in 3...n {
        cache[i] = (cache[i-1] + cache[i-2]) % 10007
    }
}

print(cache[n])