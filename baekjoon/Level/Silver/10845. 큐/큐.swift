struct Queue<T> {
    private var queue: [T] = []
    
    var size: Int {
        return queue.count
    }
    
    var isEmpty: Int {
        return queue.isEmpty ? 1 : 0
    }
    
    var back: T? {
        return queue.isEmpty ? nil : queue.last
    }
    
    var front: T? {
        return queue.isEmpty ? nil : queue.first
    }
    
    mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    mutating func dequeue() -> T? {
        return queue.isEmpty ? nil : queue.removeFirst()
    }
}

let n = Int(readLine()!)!
var myQueue = Queue<Int>()

for _ in 0..<n {
    let request = readLine()!.split(separator: " ")
    
    if request[0] == "push" {
        myQueue.enqueue(Int(request[1])!)
    } else if request[0] == "pop" {
        print(myQueue.dequeue() ?? -1)
    } else if request[0] == "size" {
        print(myQueue.size)
    } else if request[0] == "empty" {
        print(myQueue.isEmpty)
    } else if request[0] == "back" {
        print(myQueue.back ?? -1)
    } else if request[0] == "front" {
        print(myQueue.front ?? -1)
    }
}