import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer : [Int] = []
    for i in 0..<commands.count {
        var temp : [Int] = []
        for j in commands[i][0]-1...commands[i][1]-1 {
            temp.append(array[j])
        }
        temp = temp.sorted()
        answer.append(temp[commands[i][2]-1])
    }
    
    return answer
}