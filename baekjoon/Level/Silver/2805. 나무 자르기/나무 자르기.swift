let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M) = (input[0], input[1])
var tree = readLine()!.split(separator: " ").map{ Int($0)! }

var start = 0
var end = tree.max()!

while start <= end {
    let mid = (start + end) / 2
    
    var totalH = 0
    for t in tree {
        let h = t - mid
        if h > 0 { totalH += h }
    }
    
    if totalH < M {
        end = mid - 1
    } else {
        start = mid + 1
    }
}

print(end)