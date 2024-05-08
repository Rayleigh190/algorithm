let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]
var board = [[Character]]()

for _ in 0..<n {
  board.append(Array(readLine()!))
}

var minResult = Int.max

for i in 0..<(n-7) {
  for j in 0..<(m-7) {
    var wbStartCount = 0
    var bwStartCount = 0
    for x in i..<(i+8) {
      for y in j..<(j+8) {
        if (x+y)%2 == 0{
          if board[x][y] == "B" {
            wbStartCount += 1
          } else {
            bwStartCount += 1
          }
        } else {
          if board[x][y] == "W" {
            wbStartCount += 1
          } else {
            bwStartCount += 1
          }
        }
      }
    }
    minResult = min(minResult, wbStartCount, bwStartCount)
  }
}

print(minResult)