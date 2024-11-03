import Foundation

func solution(_ word:String) -> Int {
    let charList = ["A", "E", "I", "O", "U"]
    var count = 0
    
    func bt(_ result: String) -> Bool {
        count += 1
        
        if result == word {
            return true
        }
        
        if result.count == 5 {
            return false
        }
        
        
        for char in charList {
            if bt(result + char) {
                return true
            }
        }
        
        return false
    }
    
    for char in charList {
        if bt(char) {
            return count
        }
    }
    
    return 0
}