let N = Int(readLine()!)!

for _ in 0..<N {
    let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    let _ = input[0] // 문서의 개수
    var order = input[1] // 궁금한 문서가 현재 Queue에서 몇 번째에 놓여 있는지
    var importances: [Int] = readLine()!.split(separator: " ").map{Int($0)!} // 문서의 중요도
    
    var count = 1
    while(true) {
        if importances.first! == importances.max()! {
            importances.removeFirst()
            if order == 0 {
                break
            } else {
                order -= 1
            }
            count += 1
        } else {
            importances.append(importances.removeFirst())
            if order == 0 {
                order += (importances.count - 1)
            } else {
                order -= 1
            }
        }
        
    }
    print(count)
}
