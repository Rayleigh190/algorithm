import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for (a, s) in zip(absolutes, signs) {
        if s { result += a }
        else { result += a*(-1) }
    }
    return result
}