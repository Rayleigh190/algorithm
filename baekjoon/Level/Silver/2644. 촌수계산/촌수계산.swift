let n = Int(readLine()!)!
let target = readLine()!.split(separator: " ").map{ Int($0)! }
let (t1, t2) = (target[0], target[1])
let m = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (u, v) = (input[0], input[1])
    graph[u].append(v)
    graph[v].append(u)
}

var visited: [Bool] = Array(repeating: false, count: n + 1)

func bfs(_ v: Int) -> Int {
    var queue = [(v, 0)]
    var idx = 0
    visited[v] = true
    
    while idx < queue.count {
        let n = queue[idx].0
        let depth = queue[idx].1
        
        if n == t2 {
            return depth
        }
        
        for i in graph[n] {
            if !visited[i] {
                queue.append((i, depth + 1))
                visited[i] = true
            }
        }
        idx += 1
    }
    return -1
}

print(bfs(t1))