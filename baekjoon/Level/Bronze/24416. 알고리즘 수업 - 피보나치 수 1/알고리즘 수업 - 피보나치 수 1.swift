let n = Int(readLine()!)!
var cache = [0, 1, 1] + Array(repeating:0, count: 38)

for i in 3...40 {
   cache[i] = cache[i-1] + cache[i-2]
}

print("\(cache[n]) \(n-2)")