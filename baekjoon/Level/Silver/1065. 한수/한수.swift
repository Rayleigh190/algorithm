let n = Int(readLine()!)!
var count = 0

if n < 100 {
    count += n
} else {
    count += 99
}

if n > 99 {
    for i in 100...n {
        let n1 = i/100
        let n2 = i%100/10
        let n3 = i%10
        
        if n1-n2 == n2-n3 {
            count += 1
        }
    }
}

print(count)