func solution(_ num:Int) -> Int {
    var result = num
    var count = 0
    while result != 1 {
        if count > 500 { 
            count = -1
            break 
        }
        if result%2 == 0 {
            result = result / 2
        } else {
            result = result * 3 + 1
        }
        count += 1
    }
    return count
}