import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var scores: [Character:Int] = ["R" : 0, "T" : 0, "C" : 0, "F" : 0, "J" : 0, "M" : 0, "A" : 0, "N" : 0]
    
    for (s, c) in zip(survey, choices) {
        if c > 4 {
            scores[s.first!]! += (4 - c)
        } else if c < 4 {
            scores[s.last!]! += (c - 4)
        } else {
            continue
        }
    }
    
    var result = ""
    
    scores["R"]! >= scores["T"]! ? result.append("R") : result.append("T")
    scores["C"]! >= scores["F"]! ? result.append("C") : result.append("F")
    scores["J"]! >= scores["M"]! ? result.append("J") : result.append("M")
    scores["A"]! >= scores["N"]! ? result.append("A") : result.append("N")

    return result
}