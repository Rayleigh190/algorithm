let n = Int(readLine()!)!
var words: [String] = []

for _ in 0..<n {
    words.append(readLine()!)
}

var count = 0
var previousAlphabet = ""
var visitedAlphabets: [String] = []

for word in words {
    for (i, w) in word.enumerated() {
        if String(w) != previousAlphabet && visitedAlphabets.contains(String(w)) {
            // 그룹 단어가 아닙니다.
            break
        } else {
            if i == (word.count-1) {
                // word는 그룹 단어 입니다.
                count += 1
                break
            }
            previousAlphabet = String(w)
            visitedAlphabets.append(String(w))
        }
    }
    previousAlphabet = ""
    visitedAlphabets = []
}

print(count)