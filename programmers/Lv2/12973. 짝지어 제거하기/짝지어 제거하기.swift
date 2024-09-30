import Foundation

func solution(_ s:String) -> Int{
    var sArray = Array(s)
    var stack:[Character] = [sArray[0]]
    
    for i in 1..<s.count {
        if stack.last == sArray[i] {
            stack.removeLast()
        } else {
            stack.append(sArray[i])
        }
    }
    if stack.isEmpty {
        return 1
    }
    return 0
}