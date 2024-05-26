var nums: [String] = []

while(true) {
  let input = readLine()!

  if input == "0" {
    break
  } else {
    nums.append(input)
  }
}

for num in nums {
  if num == String(num.reversed()) {
    print("yes")
  } else {
    print("no")
  }
}