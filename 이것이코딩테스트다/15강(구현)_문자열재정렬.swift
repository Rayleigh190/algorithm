let input = Array(readLine()!)
var result:[Character] = []
var value = 0

for char in input {
  if char.isLetter {
      result.append(char)
  } else {
    value += char.wholeNumberValue!
  }
}

print(String(result.sorted())+String(value))