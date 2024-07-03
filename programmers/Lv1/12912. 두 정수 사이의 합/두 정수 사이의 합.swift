func solution(_ a:Int, _ b:Int) -> Int64 {
    let (mi, ma) = (min(a, b), max(a, b))
    return Int64(((ma-mi+1)*(mi + ma))/2)
}