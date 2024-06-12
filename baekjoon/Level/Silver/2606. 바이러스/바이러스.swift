let numVertex = Int(readLine()!)! // 노드 수
let numLine = Int(readLine()!)! // 간선 수

var graph: [Int:[Int]] = [:]

// 그래프를 초기화합니다.
for i in 1...numVertex {
    graph[i] = []
}

// 인접 행렬을 만듭니다.
for _ in 0..<numLine {
    let vertes = readLine()!.split(separator: " ").map {Int($0)!}
    graph[vertes[0]]?.append(vertes[1])
    graph[vertes[1]]?.append(vertes[0])
}

func DFS(graph: [Int:[Int]], start: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisitStack: [Int] = [start]
    
    while !needVisitStack.isEmpty {
        let node = needVisitStack.removeLast()
        if visitedQueue.contains(node) {continue}
        visitedQueue.append(node)
        needVisitStack += graph[node] ?? []
    }
    return visitedQueue
}

print(DFS(graph: graph, start: 1).count-1) // 1번 컴퓨터는 제외합니다.