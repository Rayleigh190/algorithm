import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    let numOfOne = num.nonzeroBitCount
    while true {
        num += 1
        if numOfOne == num.nonzeroBitCount { break }
    }
    return num
}