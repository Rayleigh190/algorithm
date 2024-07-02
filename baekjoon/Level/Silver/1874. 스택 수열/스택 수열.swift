let n = Int(readLine()!)!
var stack: [Int] = []
var current = 0
var result = ""

for _ in 0..<n {
    let target = Int(readLine()!)!
    while current < target {
        current += 1
        stack.append(current)
        result.append("+\n")
    }
    
    if stack.last == target {
        stack.removeLast()
        result.append("-\n")
    } else {
        result = "NO"
        break
    }
}
print(result)