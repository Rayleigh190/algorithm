let input = readLine()!.split(separator: " ").map {Int($0)!}
let (N, K) = (input[0], input[1])

var index = K - 1
var arr = Array(1...N)
var result: [String] = []

while arr.count > 0 {
    result.append(String(arr.remove(at: index)))
    index = index + K - 1
    if index >= arr.count && arr.count != 0 {
        index = index % arr.count
    }
}

print("<\(result.joined(separator: ", "))>")