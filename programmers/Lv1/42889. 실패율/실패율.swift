import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var reached = Array(repeating: 0, count: N+1)
    var stayed = Array(repeating: 0, count: N+1)
    
    // 각 단계의 도달한 사람과 머물고 있는 사람의 수를 구합니다.
    for stage in stages {
        for s in 0..<stage {
            reached[s] += 1   
        }
        stayed[stage-1] += 1 
    }
    
    // 1~N 단계의 실패율을 구합니다.
    var result: [Int:Float] = [:]
    for n in 1...N {
        if reached[n-1] == 0 {result[n] = 0}
        else {result[n] = Float(stayed[n-1])/Float(reached[n-1])}
    }
    
    // result를 key 내림차순 정렬, value 내림차순 정렬 후 key만 array로 반환합니다.
    return result.sorted{
        if $0.value == $1.value {return $0.key<$1.key}
        else {return $0.value>$1.value}
    }.map{$0.key}
}