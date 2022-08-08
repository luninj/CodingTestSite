import Foundation

func solution(_ s:String) -> Int {
    var temp = s
    temp = temp.replacingOccurrences(of: "zero", with: "0")
    temp = temp.replacingOccurrences(of: "one", with: "1")
    temp = temp.replacingOccurrences(of: "two", with: "2")
    temp = temp.replacingOccurrences(of: "three", with: "3")
    temp = temp.replacingOccurrences(of: "four", with: "4")
    temp = temp.replacingOccurrences(of: "five", with: "5")
    temp = temp.replacingOccurrences(of: "six", with: "6")
    temp = temp.replacingOccurrences(of: "seven", with: "7")
    temp = temp.replacingOccurrences(of: "eight", with: "8")
    temp = temp.replacingOccurrences(of: "nine", with: "9")
    
    return Int(temp)!
}