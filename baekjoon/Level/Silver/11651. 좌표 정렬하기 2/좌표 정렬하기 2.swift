let N = Int(readLine()!)!
var array: [[Int]] = []

for _ in 0..<N {
    array.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

_ = array.sorted{$0[0] < $1[0]}.sorted{$0[1] < $1[1]}.map{print("\($0[0]) \($0[1])")}