import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var answer = 0
    var ansStack : [Int] = []
    var boardtemp = board
    
    for i in moves {
        var temp = 0
        for j in 0..<boardtemp.count {
            if boardtemp[j][i-1] != 0 {
                temp = boardtemp[j][i-1]
                boardtemp[j][i-1] = 0
                break
            }
        }
        
        if temp != 0 {
            ansStack.append(temp)
        }
        
        if ansStack.count >= 2 && ansStack.last == ansStack[ansStack.count-2] {
            ansStack.removeLast()
            ansStack.removeLast()
            answer += 2
        }
        
    }
    print(ansStack)
    return answer
}