let input1 = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M) = (input1[0], input1[1])

var array: [[Int]] = []
for _ in 0..<N {
    array.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

var cache = Array(repeating: Array(repeating: 0, count: M), count: N)
cache[0][0] = array[0][0]

func dp(_ a: Int, _ b: Int) -> Int {
    if a < 0 || b < 0 {
        return 0
    }
    if cache[a][b] == 0 {
        cache[a][b] = dp(a, b-1) + dp(a-1, b) - dp(a-1, b-1) + array[a][b]
    }
    return cache[a][b]
}

let K = Int(readLine()!)!
for _ in 0..<K {
    let input2 = readLine()!.split(separator: " ").map{ Int($0)! }
    let (i, j, x, y) = (input2[0]-1, input2[1]-1, input2[2]-1, input2[3]-1)
    print(dp(x, y) - dp(x, j-1) - dp(i-1, y) + dp(i-1, j-1))
}