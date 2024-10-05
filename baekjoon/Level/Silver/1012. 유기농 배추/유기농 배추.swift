func dfs(_ graph: inout [[Int]], _ x:Int, _ y:Int, _ n:Int, _ m:Int) -> Bool {
    if x < 0 || x > n-1 || y < 0 || y > m-1 {
        return false
    }
    
    if graph[x][y] == 1 {
        graph[x][y] = 0
        _ = dfs(&graph, x-1, y, n, m)
        _ = dfs(&graph, x, y-1, n, m)
        _ = dfs(&graph, x+1, y, n, m)
        _ = dfs(&graph, x, y+1, n, m)
        return true
    }
    return false
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    let (m, n, k) = (input[0], input[1], input[2])
    
    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for _ in 0..<k {
        let xy: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
        graph[xy[1]][xy[0]] = 1
    }
    
    var count = 0
    for i in 0..<n {
        for j in 0..<m {
            if dfs(&graph, i, j, n, m) {
                count += 1
            }
        }
    }
    print(count)
}