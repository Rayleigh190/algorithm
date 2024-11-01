func bfs(_ v: Int) {
    var queue: [Int] = [v]
    var idx = 0
    visited[v] = count
    
    while idx < queue.count {
        let n = queue[idx]
        
        for i in graph[n] {
            if visited[i] == 0 {
                queue.append(i)
                count += 1
                visited[i] = count
            }
        }
        idx += 1
    }
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M, R) = (input[0], input[1], input[2])

var graph: [[Int]] = Array(repeating: [], count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

graph = graph.map{ $0.sorted() }

var visited: [Int] = Array(repeating: 0, count: N + 1)
var count = 1

bfs(R)

_ = visited[1...].map{ print($0) }