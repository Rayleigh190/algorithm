var n = Int(readLine()!)!
var cache = Array(repeating: -1, count: n+1)
cache[1] = 0

func f(_ n: Int) -> Int {
    if cache[n] == -1 {
        cache[n] = f(n-1)+1
        if n % 2 == 0 {
            cache[n] = min(cache[n], f(n/2)+1)
        }
        if n % 3 == 0 {
            cache[n] = min(cache[n], f(n/3)+1)
        }
    }
    return cache[n]
}

print(f(n))