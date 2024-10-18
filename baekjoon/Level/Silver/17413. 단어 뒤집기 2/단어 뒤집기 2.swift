let s = Array(readLine()!)

var isTag = false
var stack: [Character] = []

for c in s {
    if c == "<" {
        if !stack.isEmpty {
            print(String(stack.reversed()), terminator: "")
            stack.removeAll()
        }
        isTag = true
        print(c, terminator: "")
        continue
    } else if c == ">" {
        isTag = false
        print(c, terminator: "")
        continue
    }
        
    if isTag {
        print(c, terminator: "")
        continue
    } else {
        if c == " " {
            print(String(stack.reversed()), terminator: " ")
            stack.removeAll()
        } else {
            stack.append(c)
        }
    }
}

if !stack.isEmpty {
    print(String(stack.reversed()), terminator: "")
    stack.removeAll()
}