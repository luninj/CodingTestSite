import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer : [Int] = []
    var temp = numbers.sorted()
    
    for i in 0...9 {
        if !temp.contains(i) {
            answer.append(i)
        }
    }
    
    var sum = 0
    for i in answer {
        sum += i
    }
    return sum
}