struct Stack<T> {
    private var stack: [T] = []
    
    var size: Int {
        return stack.count
    }
    
    var isEmpty: Int {
        return stack.isEmpty ? 1 : 0
    }
    
    var top: T? {
        return stack.isEmpty ? nil : stack.last
    }
    
    mutating func push(_ element: T) {
        stack.append(element)
    }
    
    mutating func pop() -> T? {
        return stack.isEmpty ? nil : stack.popLast()
    }
}

let n = Int(readLine()!)!
var myStack = Stack<Int>()

for _ in 0..<n {
    let request = readLine()!.split(separator: " ")
    
    if request[0] == "push" {
        myStack.push(Int(request[1])!)
    } else if request[0] == "pop" {
        print(myStack.pop() ?? -1)
    } else if request[0] == "size" {
        print(myStack.size)
    } else if request[0] == "empty" {
        print(myStack.isEmpty)
    } else if request[0] == "top" {
        print(myStack.top ?? -1)
    }
}