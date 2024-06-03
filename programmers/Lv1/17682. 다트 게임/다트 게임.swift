import Foundation

func translateScores(_ scores: [String]) -> Int {
    var result = Array(repeating: 0, count: 3)
    
    for (i, score) in scores.enumerated() {
        // 각 단계의 점수를 숫자, 문자, 특수문자로 분리합니다.
        var number = ""
        var letter = ""
        var specialChar = ""
        
        for s in String(score) {
            if s.isNumber {
                number += String(s)
            } else if s.isLetter {
                letter += String(s)
            } else {
                specialChar += String(s)
            }
        }
        
        // 분리 된 점수를 특징에 맞게 계산합니다.
        result[i] += Int(number)!
        
        if letter == "D" {
            result[i] = Int(pow(Double(result[i]), 2))
        }
        else if letter == "T" {
            result[i] = Int(pow(Double(result[i]), 3))
        }
        
        
        if specialChar == "*" {
            result[i] *= 2
            if i > 0 {
                result[i-1] *= 2
            }
        } else if specialChar == "#" {
            result[i] *= (-1)
        }
    }
    
    return result.reduce(0, +)
}


func solution(_ dartResult:String) -> Int {
    // dartResult를 3개로 나눕니다.
    var scores = Array(repeating: "", count: 3)
    var scoreIdx = 0
    var previousIsNumber = true
    let startIdx = dartResult.index(after: dartResult.startIndex)
    scores[0] += String(dartResult.first!)
    
    for result in dartResult[startIdx...] {
        if result.isNumber && !previousIsNumber {
            if previousIsNumber {
                scoreIdx -= 1
            } else  {
                scoreIdx += 1
            }
            previousIsNumber = true
        } else {
            previousIsNumber = false
        }
        scores[scoreIdx] += String(result)
    }
    
    // 각 단계의 점수를 계산하여 총 점수를 반환합니다.
    return translateScores(scores)
}