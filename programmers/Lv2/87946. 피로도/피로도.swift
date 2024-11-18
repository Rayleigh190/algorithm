import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: dungeons.count)
    func dfs(_ k: Int, _ count: Int, _ maxCount: Int) -> Int {
        var mc = maxCount
        for (i, dungeon) in dungeons.enumerated() {
            if !visited[i] && k >= dungeon[0] {
                visited[i] = true
                mc = dfs(k-dungeon[1], count+1, mc)
                visited[i] = false
            } 
        }
        return max(mc, count)
    }
    return dfs(k, 0, 0)
}