let n = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map{Int($0)!}
array.sort()

var result = 0

for i in 0..<n {
    var temp = 0
    for j in 0...i {
        temp += array[j]
    }
    result += temp
}

print(result)