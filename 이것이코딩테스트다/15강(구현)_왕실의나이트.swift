let coord = Array(readLine()!).map{String($0)}
var x = Int(coord[1])!
var y = Int(Unicode.Scalar(String(coord[0]))!.value)

let steps = [
  [-2,-1], [-2,1], [-1,-2], [1,-2],
  [2,-1], [2,1], [-1,2], [1,2]
  ]

var count = 0 

for step in steps {
  let nx = x+step[0]
  let ny = y+step[1]
  if nx>0 && nx<9 && ny>96 && ny<105{
    count += 1
  }
}

print(count)