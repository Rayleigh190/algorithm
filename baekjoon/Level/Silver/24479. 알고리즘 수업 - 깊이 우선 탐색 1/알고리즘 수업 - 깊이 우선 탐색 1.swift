func dfs(_ v: Int) {
    visited[v] = count

    for i in graph[v] {
        if visited[i] == 0 {
            count += 1
            dfs(i)
        }
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

dfs(R)

_ = visited[1...].map{ print($0) }