let N = Int(readLine()!)!

var score: [Int] = []
for _ in 0..<N {
    score.append(Int(readLine()!)!)
}

var count = 0
for i in stride(from: N-2, through: 0, by: -1) {
    while score[i] >= score[i+1] {
        score[i] -= 1
        count += 1
    }
}

print(count)