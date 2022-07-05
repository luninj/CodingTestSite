var N = Int(readLine()!)!

var left = Array(repeating: 0, count: N)
var right = Array(repeating: 0, count: N)
var Narray = readLine()!.split(separator: " ").map{Int($0)!}

for i in 0..<N-1 {
    if Narray[i] <= Narray[i+1] {
        left[i] = 1
    }
}

for j in stride(from: N-1, to: 0, by: -1) {
    if Narray[j-1] >= Narray[j] {
        right[j] = 1
    }
}

var leftCount = 0
var rightCount = 0
var leftMax = 0
var rightMax = 0

for k in 0..<N {
    if left[k] == 1 {
        leftCount += 1
        leftMax = max(leftMax, leftCount)
    }
    
    else {
        leftCount = 0
    }
}

for m in 0..<N {
    if right[m] == 1 {
        rightCount += 1
        rightMax = max(rightMax, rightCount)
    }
    
    else {
        rightCount = 0
    }
}

print(max(rightMax+1, leftMax+1))
