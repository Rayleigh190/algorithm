let T = Int(readLine()!)!

for _ in 0..<T {
    let length = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map{ Int($0)! }
    let (startX, startY) = (start[0], start[1])
    let end = readLine()!.split(separator: " ").map{ Int($0)! }
    let (endX, endY) = (end[0], end[1])
    
    var graph = Array(repeating: Array(repeating: false, count: length), count: length)
    
    let dx = [-2, -1, 1, 2,  2,  1, -1, -2]
    let dy = [ 1,  2, 2, 1, -1, -2, -2, -1]
    
    func bfs(_ x: Int, _ y: Int) {
        var queue = [(x, y, 0)]
        var idx = 0
        graph[x][y] = true
        
        while queue.count > idx {
            let n = queue[idx]
            let x = n.0
            let y = n.1
            let count = n.2
            
            if x == endX && y == endY {
                print(count)
                break
            }
            
            for i in 0..<8 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                
                if nx < 0 || nx > (length - 1) || ny < 0 || ny > (length - 1) {
                    continue
                }
                
                if !graph[nx][ny] {
                    graph[nx][ny] = true
                    queue.append((nx, ny, count+1))
                }
            }
            idx += 1
        }
    }
    bfs(startX, startY)
}