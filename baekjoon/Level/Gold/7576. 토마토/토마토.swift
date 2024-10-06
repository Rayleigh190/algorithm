let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
let (m, n) = (input[0], input[1])

var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var queue: [(Int, Int)] = []

// 현재 익어있는 토마토 찾아 큐에 넣기
for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 1 {
            queue.append((i, j))
        }
    }
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var days: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
var lastIdx = (0, 0)
var idx = 0

while idx < queue.count {
    let (x, y) = (queue[idx].0, queue[idx].1)
    idx += 1
    for i in 0..<4 {
        let (nx, ny) = (x+dx[i], y+dy[i])
        if nx < 0 || nx > n-1 || ny < 0 || ny > m-1 {
            continue
        }
        if graph[nx][ny] == 0 {
            graph[nx][ny] = 1
            queue.append((nx, ny))
            days[nx][ny] = days[x][y] + 1
            lastIdx = (nx, ny)
        }
    }
}

var isOk = true

for i in 0..<n {
    if graph[i].contains(0) {
        isOk = false
        break
    }
}

if isOk { print(days[lastIdx.0][lastIdx.1]) }
else { print("-1") }