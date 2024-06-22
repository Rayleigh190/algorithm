let nums = Array(readLine()!).map{ Int(String($0))! }

var numberSet: [Int:Int] = [0 : 1, 1 : 1, 2 : 1, 3 : 1, 4 : 1, 5 : 1, 6 : 1, 7 : 1, 8 : 1, 9 : 1] // 번호:사용 가능한 개수

var count = 1

for num in nums {
    // 번호 6와 9는 따로 처리
    if num == 6 || num == 9 {
        if numberSet[6]! == 0 && numberSet[9]! == 0 {
            count += 1
            // 모든 번호 개수 1씩 증가
            for number in numberSet {
                numberSet[number.key]! += 1
            }
            numberSet[num]! -= 1
        } else {
            if numberSet[6]! == 0 {
                numberSet[9]! -= 1
            } else if numberSet[9]! == 0 {
                numberSet[6]! -= 1
            } else {
                numberSet[num]! -= 1
            }
        }
        continue
    }
    // 나머지 번호 처리
    if numberSet[num]! == 0 {
        count += 1
        // 모든 번호 개수 1씩 증가
        for number in numberSet {
            numberSet[number.key]! += 1
        }
        numberSet[num]! -= 1
    } else {
        numberSet[num]! -= 1
    }
}

print(count)