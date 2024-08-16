func solution(_ phone_number:String) -> String {
    let startIndex = phone_number.index(phone_number.endIndex, offsetBy: -4)
    let endIndex = phone_number.index(phone_number.endIndex, offsetBy: -1)
    return String(repeating: "*", count: phone_number.count-4) + phone_number[startIndex...endIndex]
}

// func solution(_ phone_number:String) -> String {
//     return String(repeating:"*", count:phone_number.count-4)+phone_number.suffix(4)
// }