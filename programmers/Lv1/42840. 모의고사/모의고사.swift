import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let pick = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    var result: [(Int, Int)] = [(1, 0), (2, 0), (3, 0)]
    for (j, ans) in answers.enumerated() {
        if ans == pick[0][j%5] { result[0].1 += 1 }
        if ans == pick[1][j%8] { result[1].1 += 1 }
        if ans == pick[2][j%10] { result[2].1 += 1 }
    }
    
    return result.filter{$0.1 == result.max{$0.1 < $1.1}!.1}.map{$0.0}
}