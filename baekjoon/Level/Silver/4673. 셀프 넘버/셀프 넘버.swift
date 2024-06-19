var nums: Set<Int> = []
for i in 1...10000 {
    nums.insert(i + String(i).map{Int(String($0))!}.reduce(0, +))
}

for i in 1...10000 {
    if !nums.contains(i) {
        print(i)
    }
}