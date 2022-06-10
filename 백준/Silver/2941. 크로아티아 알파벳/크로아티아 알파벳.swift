import Foundation

var inputStr = readLine() ?? ""

inputStr = inputStr.replacingOccurrences(of: "c=", with: "a")
inputStr = inputStr.replacingOccurrences(of: "c-", with: "a")
inputStr = inputStr.replacingOccurrences(of: "dz=", with: "a")
inputStr = inputStr.replacingOccurrences(of: "d-", with: "a")
inputStr = inputStr.replacingOccurrences(of: "lj", with: "a")
inputStr = inputStr.replacingOccurrences(of: "nj", with: "a")
inputStr = inputStr.replacingOccurrences(of: "s=", with: "a")
inputStr = inputStr.replacingOccurrences(of: "z=", with: "a")

print(inputStr.count)
