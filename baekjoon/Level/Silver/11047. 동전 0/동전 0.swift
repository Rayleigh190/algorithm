let input = readLine()!.split(separator: " ").map{Int($0)!}
var (n, k) = (input[0], input[1])
var coin: [Int] = []

for _ in 0..<n {
    coin.append(Int(readLine()!)!)
}

var count = 0
for c in coin.reversed() {
    if c <= k {
        count += (k/c)
        k %= c
    }
}

print(count)