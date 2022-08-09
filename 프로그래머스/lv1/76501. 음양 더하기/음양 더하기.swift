import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var temp = absolutes
    for i in 0..<absolutes.count {
        if signs[i] == false {
            temp[i] = absolutes[i] * -1
        }
    }
        
    return temp.reduce(0, +)
}
