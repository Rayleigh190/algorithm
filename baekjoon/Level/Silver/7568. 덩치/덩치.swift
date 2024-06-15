let N = Int(readLine()!)!

var people: [[Int]] = []
for _ in 0..<N {
    people.append(readLine()!.split(separator: " ").map {Int($0)!})
}

var count = 1
var result: [String] = []
for p in people {
    for pe in people {
        if p[0] < pe[0] && p[1] < pe[1] {
            count += 1
        }
    }
    result.append(String(count))
    count = 1
}

print(result.joined(separator: " "))