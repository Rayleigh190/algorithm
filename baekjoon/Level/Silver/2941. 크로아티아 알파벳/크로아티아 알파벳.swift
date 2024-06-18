import Foundation

var string = readLine()!
let alphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var result = 0

for a in alphabet {
    if string.contains(a) {
        let count = string.components(separatedBy: a).count - 1
        string = string.replacingOccurrences(of: a, with: "0")
        result += count
    }
}

print(result + string.replacingOccurrences(of: "0", with: "").count)