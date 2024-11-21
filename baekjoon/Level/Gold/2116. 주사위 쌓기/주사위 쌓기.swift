let N = Int(readLine()!)!

var dices: [[Int]] = []
for _ in 0..<N {
    dices.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

// 주사위의 반대편 숫자를 구하는 함수
func getOppositeNum(currentNum: Int, dice: [Int]) -> Int {
    let idx = dice.firstIndex(of: currentNum)
    switch idx {
    case 0: return dice[5]
    case 1: return dice[3]
    case 2: return dice[4]
    case 3: return dice[1]
    case 4: return dice[2]
    case 5: return dice[0]
    default: return 0
    }
}

// 주사위에서 밑면, 위면을 제외한 사이드 숫자들을 구하는 함수
func getSideNums(bottomNum: Int, upperNum: Int, dice: [Int]) -> [Int] {
    var pDice = dice
    pDice.remove(at: pDice.firstIndex(of: bottomNum)!)
    pDice.remove(at: pDice.firstIndex(of: upperNum)!)
    return pDice
}

var result: [Int] = []
for i in 0..<6 {
    var sides: [[Int]] = []
    var bottomNum = dices[0][i]
    var upperNum = getOppositeNum(currentNum: bottomNum, dice: dices[0])
    sides.append(getSideNums(bottomNum: bottomNum, upperNum: upperNum, dice: dices[0]))
    
    for j in 1..<N {
        bottomNum = upperNum
        upperNum = getOppositeNum(currentNum: bottomNum, dice: dices[j])
        sides.append(getSideNums(bottomNum: bottomNum, upperNum: upperNum, dice: dices[j]))
    }
    result.append(sides.map{ $0.max()! }.reduce(0, +))
}

print(result.max()!)