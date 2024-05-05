var list:[Int] = []

for _ in 0..<9 {
  list.append(Int(readLine()!)!)
}

var maxValue: Int = 0
var maxIdx: Int = 0

for (i, v) in list.enumerated() {
  if v > maxValue {
    maxValue = v
    maxIdx = i
  }
}

print(maxValue)
print(maxIdx+1)