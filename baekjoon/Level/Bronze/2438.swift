let input = Int(readLine()!)!

for num in 1...input {
    for _ in 0..<num {
        print("*", terminator: "")
    }
    print("")
}