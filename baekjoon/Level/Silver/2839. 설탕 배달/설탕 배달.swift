let n = Int(readLine()!)!

let weight: [Int] = [3, 5]
var d: [Int] = Array(repeating: 5001, count: n+1)
d[0] = 0

for i in weight {
    if i <= n+1 {
        for j in i..<n+1 {
            if d[j-i] != 5001 {
                d[j] = min(d[j], d[j-i]+1)
            }
        }
    }
}

if d[n] == 5001 {
    print(-1)
} else {
    print(d[n])
}