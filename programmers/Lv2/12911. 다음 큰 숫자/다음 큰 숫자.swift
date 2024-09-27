import Foundation

func d2b(_ n:Int) -> String {
    var remainders: String = ""
    var quotient:Int = n
    while quotient > 1 {
        remainders += "\(quotient%2)"
        quotient = quotient/2
    }
    remainders += "\(quotient)"
    return remainders
}

func solution(_ n:Int) -> Int {
    var num = n
    let numOfOne = d2b(num).filter({$0=="1"}).count
    while true {
        num += 1
        let nextNumOfOne = d2b(num).filter({$0=="1"}).count
        if numOfOne == nextNumOfOne { break }
    }
    return num
}