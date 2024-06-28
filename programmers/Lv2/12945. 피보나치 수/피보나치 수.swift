var cache: [Int] = []

func fibo(_ n:Int) -> Int {
    if n == 1 || n == 2 { return 1 }
    if cache[n] == 0 {
        cache[n] = (fibo(n-1) + fibo(n-2)) % 1234567
    }
    return cache[n]
}

func solution(_ n:Int) -> Int {
    cache = Array(repeating: 0, count: n+1)
    return fibo(n)
}