import Foundation

func solution(_ n:Int64) -> Int64 {
    let v = Int64(sqrt(Double(n)))
    return v*v == n ? (v+1)*(v+1) : -1
}