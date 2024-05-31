import Foundation

let dic = [
    "zero": "0",
    "one": "1",
    "two": "2",
    "three": "3",
    "four": "4",
    "five": "5",
    "six": "6",
    "seven": "7",
    "eight": "8",
    "nine": "9"
]

func changeLetterToNumber(_ letter:String) -> String {
    return dic[letter] ?? "-1"
}

func solution(_ s:String) -> Int {
    var letters = ""
    var newNum = ""
    
    for c in s {
        if c.isLetter {
            letters += String(c)
            let changedNum = changeLetterToNumber(letters)
            if changedNum != "-1" {
                newNum += changedNum
                letters = ""
            }
        } else {
            newNum += String(c)
        }
    }
    
    return Int(newNum)!
}