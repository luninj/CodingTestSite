var ABNum = readLine()!.split(separator: " ").map{Int($0)!}

var AInput = readLine()!.split(separator: " ").map{Int($0)!}
var BInput = readLine()!.split(separator: " ").map{Int($0)!}

var A : Set = Set(AInput)
var B : Set = Set(BInput)

print(A.symmetricDifference(B).count)
