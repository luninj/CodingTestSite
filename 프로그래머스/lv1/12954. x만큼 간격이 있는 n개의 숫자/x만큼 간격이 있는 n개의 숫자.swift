func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer : [Int64] = []
    var num = Int64(x)
    
    for _ in 0..<n {
        answer.append(num)
        num += Int64(x)
    }
    
    return answer
}