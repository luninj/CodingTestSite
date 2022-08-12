import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dict : [Int : Int] = [:]
    var answer : [Int : Double] = [:]
    for i in 1...N+1 {
        dict[i] = 0
    }
    
    for i in stages {
        dict[i]! += 1
    }
    
    let tempDict = dict.sorted {$0.0 < $1.0}
    
    var restTotal = stages.count
    for i in tempDict {
        var stageCount = 0
        
        if restTotal == 0 {
            answer[i.key] = 0.0
        }
        
        else {
            if i.key != N+1 {
                stageCount = i.value
                answer[i.key] = Double(stageCount) / Double(restTotal)
                restTotal -= stageCount
            }
        }
    }
    
    let temp = answer.sorted{
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        }
        
        else {
            return $0.1 > $1.1
        }
    }
    
    var result : [Int] = []
    for i in 0..<N {
        result.append(temp[i].key)
    }
    
    return result
}