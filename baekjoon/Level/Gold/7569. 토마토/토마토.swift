let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (M, N, H) = (input[0], input[1], input[2])

var graph: [[[Int]]] = []

for _ in 0..<H {
    var g: [[Int]] = []
    for _ in 0..<N {
        g.append(readLine()!.split(separator: " ").map{ Int($0)! })
    }
    graph.append(g)
}

var queue: [(Int, Int, Int)] = []

for h in 0..<H {
    for n in 0..<N {
        for m in 0..<M {
            if graph[h][n][m] == 1 {
                queue.append((h, n, m))
            }
        }
    }
}

let dx = [0,  0, -1, 1,  0, 0]
let dy = [0,  0,  0, 0, -1, 1]
let dz = [1, -1,  0, 0,  0, 0]

var visitedDate: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: M), count: N), count: H)
var lastIdx = (0, 0, 0)

func bfs() {
    var idx = 0
    
    while queue.count > idx {
        let n = queue[idx]
        let date = visitedDate[n.0][n.1][n.2]
        
        for i in 0..<6 {
            let nx = n.2 + dx[i]
            let ny = n.1 + dy[i]
            let nz = n.0 + dz[i]
            
            if nx < 0 || nx > M - 1 || ny < 0 || ny > N - 1 || nz < 0 || nz > H - 1 {
                continue
            }
            
            if graph[nz][ny][nx] == -1 || graph[nz][ny][nx] == 1{
                continue
            }
            
            graph[nz][ny][nx] = 1
            queue.append((nz, ny, nx))
            visitedDate[nz][ny][nx] = date + 1
            lastIdx = (nz, ny, nx)
        }
        idx += 1
    }
}

bfs()

var isOk = true

if graph.contains(where: {$0.contains(where: {$0.contains(0)})}) {
    isOk = false
}

if isOk {
    print(visitedDate[lastIdx.0][lastIdx.1][lastIdx.2])
} else {
    print(-1)
}