import Foundation

func solution(_ s:String) -> Bool
{
    var leftCount = 0
    for c in s {
        if c == "(" { leftCount += 1 }
        else { 
            if leftCount > 0 { leftCount -= 1 }
            else { return false }
        }
    }
    return leftCount > 0 ? false : true
}