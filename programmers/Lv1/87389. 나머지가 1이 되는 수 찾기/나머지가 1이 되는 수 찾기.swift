import Foundation

func solution(_ n:Int) -> Int {
    var x = 0
    while true {
        x += 1
        if n%x == 1 { break }
    }
    return x
}