let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (input[0], input[1])
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

let dx:[Int] = [0, 1, 0, -1]
let dy:[Int] = [1, 0, -1, 0]

func bfs(_ vx:Int, _ vy:Int) -> Int {
    var queue:[(Int, Int)] = []
    queue.append((vx, vy))
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || nx > (n-1) || ny < 0 || ny > (m-1) {
                continue
            }
            
            if graph[nx][ny] == 0 {
                continue
            }
            
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
    return graph[n-1][m-1]
}

print(bfs(0, 0))