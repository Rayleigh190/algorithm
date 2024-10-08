let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (input[0], input[1])
var set1: Set<String> = []
var arr: [String] = []

for _ in 0..<n {
    set1.insert(readLine()!)
}

for _ in 0..<m {
    arr.append(readLine()!)
}

var set2 = Set(arr)
let result = set2.intersection(set1)
print(arr.filter{result.contains($0)}.count)