import Foundation

var x = readLine()!.split(separator: " ").map{Double($0)!}

var goal = ceil((x[2] - x[1]) / (x[0] - x[1]))
print(Int(goal))
