let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    let alphabet = readLine()!.split(separator: " ")
    var result: [String] = []
    for al in alphabet {
        let a = String(al)
        if result.isEmpty {
            result.append(a)
            continue
        }
        if result.first! >= a {
            result.insert(a, at: 0)
        } else {
            result.append(a)
        }
    }
    print(result.joined())
}