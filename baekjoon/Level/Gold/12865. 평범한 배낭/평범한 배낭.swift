let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, k) = (input[0], input[1])

var weights: [Int] = []
var values: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    weights.append(input[0])
    values.append(input[1])
}

var d = Array(repeating: Array(repeating: 0, count: k+1), count: n)

for i in 0..<n {
    for j in 1...k {
        if i == 0 {
            if weights[i] <= j {
                d[i][j] = values[i]
            }
        } else {
            if weights[i] <= j {
                d[i][j] = max(d[i-1][j], d[i-1][j-weights[i]] + values[i])
            } else {
                d[i][j] = d[i-1][j]
            }
        }
    }
}

print(d[n-1][k])