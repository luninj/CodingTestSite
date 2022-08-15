import Foundation

func solution(_ s:String) -> Int {
    var answerArr : [Int] = []
    
    if s.count == 1 {
        return 1
    }
    
    for i in 1...(s.count)/2 {
        var tempString = s
        var tempArr : [String] = []
        for _ in stride(from: 0, through: s.count-1, by: i) {
            let temp = tempString.prefix(i)
            tempString = cutString(tempString, i)
            tempArr.append(String(temp))
        }
        
        var loop = 0
        var tempAnswer = ""
        while loop < tempArr.count {
            var count = 0
            for j in loop..<tempArr.count {
                if tempArr[loop] == tempArr[j] {
                    count += 1
                }
                
                else {
                    break
                }
            }
            var asdf = ""
            
            if count == 1 {
                asdf = String(tempArr[loop])
            }
            else {
                asdf = String(count) + String(tempArr[loop])
            }
            
            tempAnswer += asdf
            loop += count
            
        }
        
        answerArr.append(tempAnswer.count)
    }
    return answerArr.min()!
}

func cutString(_ s:String, _ i:Int) -> String {
    var answer = s
    for _ in 0..<i {
        if answer.count != 0 {
            answer.removeFirst()
        }
    }
    return answer
}