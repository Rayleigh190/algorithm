import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var pCount = 0
    var yCount = 0

    for c in s {
        if c == "p" || c == "P" {
            pCount += 1
        } else if c == "y" || c == "Y" {
            yCount += 1
        }
    }

    if pCount == yCount {ans=true}

    return ans
}