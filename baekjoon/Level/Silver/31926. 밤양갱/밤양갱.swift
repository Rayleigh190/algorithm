let N = Int(readLine()!)!

var count = 0
var k = N
while k > 1 {
    k /= 2
    count += 1
}

print(10 + count)