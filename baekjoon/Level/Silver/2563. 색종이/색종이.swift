let N = Int(readLine()!)!

var coords: [[Int]] = []
for _ in 0..<N {
    coords.append(readLine()!.split(separator: " ").map {Int($0)!})
}

var background: [[Bool]] = Array(repeating: Array(repeating: false, count: 100), count: 100)

for coord in coords {
    for i in coord[0]..<coord[0] + 10 {
        for j in coord[1]..<coord[1] + 10 {
            background[i][j] = true
        }
    }
}

print(background.flatMap{$0}.filter{$0 == true}.count)
