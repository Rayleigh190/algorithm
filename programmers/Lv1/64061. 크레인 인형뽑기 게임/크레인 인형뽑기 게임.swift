import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board: [[Int]] = board
    var bucket: [Int] = []
    let n = board.count
    var count = 0
    
    // moves에 따라 board에서 인형을 뽑아 바구니에 담습니다.
    for move in moves {
        for i in 0..<n {
            // move에 해당하는 열의 인형을 뽑습니다.
            let newDoll = board[i][move-1]
            if newDoll != 0 {
                // 새로운 인형이 바구니의 마지막 인형과 같은지 확인합니다.
                if bucket.count > 0 {
                    if bucket.last == newDoll {
                        // 같으면 바구니의 마지막 값을 제거하고 새로운 인형을 넣지 않습니다.
                        bucket.removeLast()
                        count += 2 // 사라진 인형 개수 2개를 더합니다.
                    } else {
                        // 같지 않으면 새로운 인형을 바구니에 넣습니다.
                        bucket.append(newDoll)
                    }
                } else {
                    bucket.append(board[i][move-1])
                }
                // 집어 올린 인형 자리를 0으로 만드어 줍니다.
                board[i][move-1] = 0
                break
            }
        }
    }
    return count
}