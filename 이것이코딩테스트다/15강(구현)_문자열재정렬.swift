let input = readLine()!
let letter = input.filter({$0.isLetter})
let digit = input.filter({$0.isNumber}).map{$0.wholeNumberValue!}

print(String(letter.sorted()), terminator: "")
print(digit.reduce(0, +))
