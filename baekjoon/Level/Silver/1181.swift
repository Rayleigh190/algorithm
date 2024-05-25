let len = Int(readLine()!)!
var word: [String] = []

for _ in 0..<len {
  word.append(readLine()!)
}

word = Array(Set(word).sorted(by: {$0<$1}).sorted(by: {$0.count<$1.count}))

for w in word {
  print(w)
}