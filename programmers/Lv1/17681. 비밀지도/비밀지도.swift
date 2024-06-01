func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var arr3: [String] = arr1.map {String($0, radix: 2)}
    var arr4: [String] = arr2.map {String($0, radix: 2)}
    
    for (idx, (a3, a4)) in zip(arr3, arr4).enumerated() {
        arr3[idx] = String(repeating: "0", count: n-a3.count) + a3
        arr4[idx] = String(repeating: "0", count: n-a4.count) + a4
    }
  
    for i in 0..<n {
        let map1 = arr3[i]
        let map2 = arr4[i]
        var newMap = ""
        for (m1, m2) in zip(map1, map2) {
            if m1 == "1" || m2 == "1" {
                newMap += "#"
            } else {
                newMap += " "
            }
        }
        answer.append(newMap)
    }
    
    return answer
}