func solution(_ s:String) -> String {
    let count = s.count
    let lastIndex = s.index(s.startIndex, offsetBy: count/2)
    if count%2 == 0 {
        let startIndex = s.index(s.startIndex, offsetBy: (count/2)-1)
        return String(s[startIndex...lastIndex])
    } else {
        return String(s[lastIndex...lastIndex])
    }
}