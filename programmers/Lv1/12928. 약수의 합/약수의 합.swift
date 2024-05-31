func solution(_ n:Int) -> Int {
    var num = n
    var result = 0
    
    while num > 0 {
        if n%num == 0 {
            result += num
        }
        num -= 1
    }
    
    return result
}