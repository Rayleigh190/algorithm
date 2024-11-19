import Foundation

func solution(_ numbers:String) -> Int {
    let nums = numbers.map{ String($0) }
    
    func isPrimeNum(_ n: [String]) -> Bool {
        guard let num = Int(n.joined()) else { return false }
        if num <= 1 { return false }
        if num <= 3 { return true }
        if num % 2 == 0 { return false }
        for i in 2..<sqrt(num) {
            if num % i == 0 { return false }
        }
        return true
    }
    
    var result: Set<Int> = []
    var visited = Array(repeating: false, count: nums.count)
    
    func dfs(_ nnum: [String]) {
        for (i, num) in nums.enumerated() {
            if nnum.isEmpty && num == "0" { continue }
            var newNum = nnum + [num]
            if !visited[i] {
                visited[i] = true
                if isPrimeNum(newNum) {
                    result.insert(Int(newNum.joined())!)
                }
                dfs(newNum)
                visited[i] = false
            }
        }
    }
    dfs([])
    return result.count
}