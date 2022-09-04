import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var stack : [Int] = []
    var temp : [Int] = []
    
    var maxValue = 0
    var cnt = 0
    
    for i in 0..<progresses.count {
        var temp2 = (100-progresses[i]) / speeds[i]
        if (100-progresses[i]) % speeds[i] != 0 {
            temp2 += 1
        }
        temp.append(temp2)
        
        if maxValue == 0 {
            maxValue = temp2
        }
        
        if maxValue < temp[i] {
            maxValue = temp[i]
            stack.append(cnt)
            cnt = 0
        }
        cnt += 1
    }

    stack.append(cnt)
    return stack
}
