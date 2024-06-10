import Foundation

// 키패드를 2차원 좌표로 표현합니다.
let keyPad = [
    "1" : [0,3],
    "2" : [1,3],
    "3" : [2,3],
    "4" : [0,2],
    "5" : [1,2],
    "6" : [2,2],
    "7" : [0,1],
    "8" : [1,1],
    "9" : [2,1],
    "*" : [0,0],
    "0" : [1,0],
    "#" : [2,0]
]

func distance(_ x: [Int], _ y: [Int]) -> Int {
    // 두 숫자 사이의 거리를 구해 반환합니다. (맨해튼 거리)
    return abs(x[0]-y[0]) + abs(x[1]-y[1])
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    let leftNums = [1, 4, 7]
    let rightNums = [3, 6, 9]
    var leftHandPosition = "*"
    var rightHandPosition = "#"
    var result: String = ""
    
    for number in numbers {
        if leftNums.contains(number) {
            // 왼쪽 숫자일 경우
            result += "L"
            leftHandPosition = String(number)
        } else if rightNums.contains(number) {
            // 오른쪽 숫자일 경우
            result += "R"
            rightHandPosition = String(number)
        } else {
            // 가운데 숫자일 경우, 두 손 중 가까운 손 사용합니다.
            let dL = distance(keyPad["\(number)"]!, keyPad[leftHandPosition]!)
            let dR = distance(keyPad["\(number)"]!, keyPad[rightHandPosition]!)
            
            if dL < dR {
                // 왼손이 더 가까운 경우
                result += "L"
                leftHandPosition = String(number)
            } else if dL > dR {
                // 오른손이 더 가까운 경우
                result += "R"
                rightHandPosition = String(number)
            } else {
                // 두 손 거리가 같은 경우
                if hand == "left" {
                    result += "L"
                    leftHandPosition = String(number)
                } else {
                    result += "R"
                    rightHandPosition = String(number)
                }
            }
        }
    }
    return result
}