let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    
    var start = 0
    var end = 1000000000
    
    while start <= end {
        let mid = (start + end) / 2
        let sum = (mid + 1) * mid / 2
        if N < sum {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    print(end)
}