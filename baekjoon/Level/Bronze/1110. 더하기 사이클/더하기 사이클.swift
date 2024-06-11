let n = readLine()!
var nums = [0, 0]

if n.count < 2 {
    nums[1] = Int(n)!
} else {
    nums[0] = Int(String(n[n.startIndex]))!
    nums[1] = Int(String(n[n.index(n.startIndex, offsetBy: 1)]))!
}

var count = 0
while true {    
    let tempNum = nums[0]
    nums[0] = nums[1]
    nums[1] = (tempNum + nums[1])%10
    count += 1
    if Int(n)! == Int("\(nums[0])\(nums[1])") {
        break
    }
}

print(count)