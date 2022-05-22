var x = Int(readLine()!)!

var inputCount = readLine()!.split(separator: " ").map{Int($0)!}

print(inputCount.min()! * inputCount.max()!)
