import Foundation

func solution(_ s:String) -> Int{
    var answer:Int = 0
    var stack : [Character] = []
    
    for i in s {
        if stack.last != i {
            stack.append(i)
        }
        
        else {
            stack.removeLast()
        }
        
    }
    if stack.isEmpty {
        answer = 1
    }
    return answer
}