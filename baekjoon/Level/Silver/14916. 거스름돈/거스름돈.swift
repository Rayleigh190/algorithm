var n = Int(readLine()!)!
var result = 0

if n%5 == 0 {
    result = n/5
} else {
    while n > 0 {
        n -= 2
        result += 1
        if n % 5 == 0  {
            result += n/5
            break
        }
    }
}

if n < 0 {
    result = -1
}

print(result)