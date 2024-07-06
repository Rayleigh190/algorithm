import Foundation

func solution(_ numbers:[Int]) -> Int {
    var numArray = Array(0...9)
    for number in numbers {
        if numArray.contains(number) {
            numArray.remove(at: numArray.firstIndex(of: number)!)
        }
    }
    return numArray.reduce(0, +)
}