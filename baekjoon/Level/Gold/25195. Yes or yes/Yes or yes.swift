let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M) = (input[0], input[1])

var graph: [[Int]] = Array(repeating: [], count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (u, v) = (input[0], input[1])
    graph[u].append(v)
}

let S = Int(readLine()!)!
let ss = readLine()!.split(separator: " ").map{ Int($0)! }

var visited = Array(repeating: false, count: N + 1)

func dfs(_ v: Int) -> Bool {
    visited[v] = true
    
    if ss.contains(v) {
        return false
    }
    
    if graph[v].isEmpty {
        return true
    }
    
    var result = false
    for i in graph[v] {
        if !visited[i] {
            if dfs(i) {
                result = true
            }
        }
    }
    return result
}

if dfs(1) { print("yes")}
else { print("Yes") }