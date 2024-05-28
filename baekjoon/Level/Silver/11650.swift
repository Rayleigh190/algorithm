let n = Int(readLine()!)!
var coord: [[Int]] = []

for _ in 0..<n {
    coord.append(readLine()!.split(separator: " ").map{Int($0)!})
}

coord = coord.sorted(by: {$0[1] < $1[1]}).sorted(by: {$0[0] < $1[0]})

for c in coord {
    print("\(c[0]) \(c[1])")
}