func solution(_ n:Int) -> String {
    var result = ""
    for i in stride(from: 1, to: n+1, by: 1) {
        if i%2 == 0 { result.append("박") } 
        else { result.append("수") }
    }
    return result
}

// func solution(_ n:Int) -> String {
//     return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
// }