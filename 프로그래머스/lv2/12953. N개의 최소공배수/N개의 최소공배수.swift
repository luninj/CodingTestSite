func solution(_ arr:[Int]) -> Int {
    var answer = arr[0]
    
    for i in arr {
        answer = maxX(answer, i)
    }
    return answer
}

func minX(_ a : Int, _ b : Int) -> Int {
    return b == 0 ? a : minX(b, a % b)
}

func maxX(_ a : Int, _ b : Int) -> Int {
    return a * b / minX(a, b)
}