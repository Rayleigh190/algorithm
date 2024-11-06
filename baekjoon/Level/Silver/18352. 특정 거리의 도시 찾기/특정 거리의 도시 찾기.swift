let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M, K, X) = (input[0], input[1], input[2], input[3])

var graph: [[Int]] = Array(repeating: [], count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (u, v) = (input[0], input[1])
    graph[u].append(v)
}

var visited = Array(repeating: false, count: N + 1)
var result: [Int] = []

func bfs(_ v: Int, _ count: Int) {
    var queue = [(v, count)]
    visited[v] = true
    var idx = 0
    
    while queue.count > idx {
        let n = queue[idx]
        
        if n.1 == K {
            result.append(n.0)
        }
        
        for i in graph[n.0] {
            if !visited[i] {
                queue.append((i, n.1 + 1))
                visited[i] = true
            }
        }
        idx += 1
    }
}

bfs(X, 0)

if result.isEmpty {
    print(-1)
} else {
    print(result.sorted().map{ String($0) }.joined(separator: "\n"))
}