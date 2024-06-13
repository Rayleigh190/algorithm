struct Deque<T> {
    var deque: [T] = []
    
    var size: Int {
        return deque.count
    }
    
    var isEmpty: Int {
        return deque.isEmpty ? 1 : 0
    }
    
    var front: T? {
        return deque.isEmpty ? nil : deque.first
    }
    
    var back: T? {
        return deque.isEmpty ? nil : deque.last
    }
    
    mutating func push_front(_ x: T) {
        deque = [x] + deque
    }
    
    mutating func push_back(_ x: T) {
        deque = deque + [x]
    }
    
    mutating func pop_front() -> T? {
        return deque.isEmpty ? nil : deque.removeFirst()
    }
    
    mutating func pop_back() -> T? {
        return deque.isEmpty ? nil : deque.removeLast()
    }
}

var myDeque = Deque<String>()
let n = Int(readLine()!)!

for _ in 0..<n {
    let request = readLine()!.split(separator: " ")
    let command = request[0]
    var num: String {
        if request.count > 1 {return String(request[1])}
        else {return ""}
    }
    
    if command == "push_front" {
        myDeque.push_front(num)
    } else if command == "push_back" {
        myDeque.push_back(num)
    } else if command == "pop_front" {
        print(myDeque.pop_front() ?? -1)
    } else if command == "pop_back" {
        print(myDeque.pop_back() ?? -1)
    } else if command == "size" {
        print(myDeque.size)
    } else if command == "empty" {
        print(myDeque.isEmpty)
    } else if command == "front" {
        print(myDeque.front ?? -1)
    } else if command == "back" {
        print(myDeque.back ?? -1)
    }
}