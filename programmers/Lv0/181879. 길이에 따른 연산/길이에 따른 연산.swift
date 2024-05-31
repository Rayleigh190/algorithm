import Foundation

func solution(_ num_list:[Int]) -> Int {
    let len = num_list.count
    var result = 0
    
    if len > 10 {
        for num in num_list {
            result += num
        }    
    } else {
        result = 1
        for num in num_list {
            result *= num
        }    
    }
    
    return result
}