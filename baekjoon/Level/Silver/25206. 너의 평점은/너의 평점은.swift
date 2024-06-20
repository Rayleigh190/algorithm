var totalScores = 0.0
var totalCredits = 0.0

let grade: [String:Double] = [
    "A+" : 4.5,
    "A0" : 4.0,
    "B+" : 3.5,
    "B0" : 3.0,
    "C+" : 2.5,
    "C0" : 2.0,
    "D+" : 1.5,
    "D0" : 1.0,
    "F" : 0.0
]

for _ in 0..<20 {
    let input = readLine()!.split(separator: " ")
    if input[2] != "P" {
        totalScores += Double(input[1])! * grade[String(input[2])]!
        totalCredits += Double(input[1])!
    }
}

print(totalScores/totalCredits)