let n = Int(readLine()!)!
let route = readLine()!.split(separator: " ")
var coord = [1, 1]

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
let moveType = ["U", "D", "L", "R"]

for r in route {
  var newCoord = [0, 0]
  for (idx, type) in moveType.enumerated() {
    if r == type {
      newCoord[0] = coord[0] + dx[idx]
      newCoord[1] = coord[1] + dy[idx]
      break // 이거 있고 없고 차이는??
    }
  }
  if newCoord[0]<1 || newCoord[0]>n || newCoord[1]<1 || newCoord[1]>n {
    continue
  }
  coord[0] = newCoord[0]
  coord[1] = newCoord[1]
}

print(coord[0], coord[1])