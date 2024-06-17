let x = Int(readLine()!)!
var line = 0
var lineCount = 0

while lineCount < x {
    line += 1
    lineCount += line
}

if line % 2 == 0 {
    // 위에서 부터
    print("\(line - (lineCount - x))/\(lineCount - x + 1)")
} else {
    // 아래서 부터
    print("\(lineCount - x + 1)/\(line - (lineCount - x))")
}