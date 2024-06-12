let n = Int(readLine()!)!
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(Array(readLine()!.map {Int(String($0))!}))
}

func DFS(_ x: Int, _ y: Int) -> Bool {
    if x < 0 || x >= n || y < 0 || y >= n { return false }
    if graph[x][y] != 0 {
        graph[x][y] = 0
        houseCount += 1
        DFS(x-1, y)
        DFS(x, y-1)
        DFS(x+1, y)
        DFS(x, y+1)
        return true
    }
    return false
}

var groupCount = 0
var houseCounts: [Int] = []
var houseCount = 0

for i in 0..<n {
    for j in 0..<n {
        if DFS(i, j) {
            groupCount += 1
            houseCounts.append(houseCount)
            houseCount = 0
        }
    }
}

print(groupCount)
houseCounts.sorted().map {print($0)}