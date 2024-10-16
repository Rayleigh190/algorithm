let n = Int(readLine()!)!

for _ in 0..<n {
    var result: [String] = []
    for s in readLine()!.split(separator: " ") {
        result.append(String(s.reversed()))
    }
    print(result.joined(separator: " "))
}