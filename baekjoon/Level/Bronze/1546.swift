let n = Double(readLine()!)!
let scores = readLine()!.split(separator: " ").map{Double($0)!}

let max = scores.max()!
var sum = 0.0

for score in scores {
  sum += score/max*100
}

print(sum/n)