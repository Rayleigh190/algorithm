let N = Int(readLine()!)!
let sizes = readLine()!.split(separator: " ").map{ Int($0)! }
let tp = readLine()!.split(separator: " ").map{ Int($0)! }
let (T, P) = (tp[0], tp[1])

// 티셔츠를 T장씩 최소 몇 묶음 주문해야 하는지 구하기
var countT = 0
for size in sizes {
    countT += size / T
    if size % T != 0 {
        countT += 1
    }
}
print(countT)

// 펜을 P자루씩 최대 몇 묶음 주문할 수 있는지와, 그 때 펜을 한 자루씩 몇 개 주문하는지 구하기
print("\(N / P) \(N % P)")