var N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map{Int($0)!}
var B = readLine()!.split(separator: " ").map{Int($0)!}

var tempB = B.sorted()
var tempA = [Int](A.sorted().reversed())

var sum = 0

for i in 0..<N {
    sum += tempA[i] * tempB[i]
}

print(sum)
