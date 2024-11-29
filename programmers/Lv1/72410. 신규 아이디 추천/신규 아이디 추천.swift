import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    var newId = ""
    
    // 1단계 : new_id의 모든 대문자를 대응되는 소문자로 치환합니다.
    id = id.lowercased()
    
    // 2단계 : new_id에서 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거합니다.
    for i in id {
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            newId.append(i)
        }
    }
    
    // 3단계 : new_id에서 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환합니다.
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계 : new_id에서 마침표(.)가 처음이나 끝에 위치한다면 제거합니다.
    while newId.hasPrefix(".") {
        newId.removeFirst()
    }

    while newId.hasSuffix(".") {
        newId.removeLast()
    }
    
    // 5단계 new_id가 빈 문자열이라면, new_id에 "a"를 대입합니다.
    if newId.count == 0 {
        newId = "a"
    }
    
    // 6단계 new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거합니다. 만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거합니다.
    if newId.count >= 16 {
        newId = Array(newId.map{String($0)})[0..<15].joined()
    }
    if newId.hasSuffix(".") {
        newId.removeLast()
    }
    
    // 7단계 new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙입니다.
    while newId.count < 3 {
        newId.append(newId.last!)
    }
    
    return newId
}