import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {    
    var result: [Int] = []
    for i in 0..<(n-1) {
        // 간선을 하나 제거하고 그래프를 만든다(전선 끊기)
        var graph: [[Int]] = Array(repeating: [], count: n+1)
        for (j, wire) in wires.enumerated() {
            if i == j { continue }
            graph[wire[0]].append(wire[1])
            graph[wire[1]].append(wire[0])
        }
        
        // DFS로 연결된 송전탐의 개수를 구한다
        var visited = Array(repeating: false, count: n+1)
        func dfs(_ v: Int, _ count: Int) -> Int {
            visited[v] = true
            var nCount = count+1
            for k in graph[v] {
                if !visited[k] {
                    nCount = dfs(k, nCount)
                }
            }
            return nCount
        }
        
        // 그래프를 탐색한다
        // 간선(전선)을 하나 끊었으므로 counts에는 2개가 추가 된다
        var counts: [Int] = []
        for t in 1...n {
            if !visited[t] {
                counts.append(dfs(t, 0))
            }
        }
        result.append(abs(counts[0]-counts[1]))
    }
    return result.min()!
}