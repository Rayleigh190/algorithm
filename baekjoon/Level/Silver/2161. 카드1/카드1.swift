let N = Int(readLine()!)!
var cards = Array(1...N)

while true {
    if cards.count > 1 { print(cards.removeFirst(), terminator: " ") }
    if cards.count == 1 { 
        print("\(cards[0])")
        break 
    }
    cards.append(cards.removeFirst())  
}