let input = readLine()!.split(separator: " ").map {Int($0)!}
let (n, m, start) = (input[0], input[1], input[2])

var graph: [Int:[Int]] = [:]

// 그래프 초기화
for i in 1...n {
    graph[i] = []
}

// 인접 리스트 만들기
for _ in 0..<m {
    let v = readLine()!.split(separator: " ").map {Int($0)!} // 연결 정보
    graph[v[0]]?.append(v[1])
    graph[v[1]]?.append(v[0])
}

func DFS(graph: [Int:[Int]], start: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisistedStack: [Int] = [start]
    
    while !needVisistedStack.isEmpty {
        let node = needVisistedStack.removeLast()
        if visitedQueue.contains(node) {continue}
        visitedQueue.append(node)
        needVisistedStack += graph[node]?.sorted(by: >) ?? []
    }
    
    return visitedQueue
}

func BFS(graph: [Int:[Int]], start: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisistedQueue: [Int] = [start]
    
    while !needVisistedQueue.isEmpty {
        let node = needVisistedQueue.removeFirst()
        if visitedQueue.contains(node) {continue}
        visitedQueue.append(node)
        needVisistedQueue += graph[node]?.sorted(by: <) ?? []
    }
    
    return visitedQueue
}

print(DFS(graph: graph, start: start).map {String($0)}.joined(separator: " "))
print(BFS(graph: graph, start: start).map {String($0)}.joined(separator: " "))