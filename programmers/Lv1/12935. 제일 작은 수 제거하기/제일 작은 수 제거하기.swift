func solution(_ arr:[Int]) -> [Int] {
    let minNum = arr.min()
    let result = arr.filter({ $0 != minNum })
    return result.isEmpty ? [-1] : result
}