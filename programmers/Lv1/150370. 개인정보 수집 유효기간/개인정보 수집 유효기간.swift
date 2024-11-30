import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    func dateToInt(_ date: String) -> Int {
        let temp = date.split(separator: ".").map{ Int($0)! }
        return temp[0]*12*28 + temp[1]*28 + temp[2]
    }
    
    let todayDate = dateToInt(today)
    var termsDic: [String:Int] = [:]
    for term in terms {
        let input = term.split(separator: " ")
        termsDic[String(input[0])] = Int(input[1])! * 28
    }
    
    var result: [Int] = []
    for (i, privacie) in privacies.enumerated() {
        let input = privacie.split(separator: " ").map{ String($0) }
        let (collectionDate, type) = (dateToInt(input[0]), input[1])
        if collectionDate + termsDic[type]! <= todayDate {
            result.append(i+1)
        }
    }
    return result
}