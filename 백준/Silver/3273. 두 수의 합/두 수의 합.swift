var N = Int(readLine()!)!

var NArray = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var answer = Int(readLine()!)!

var count = 0

var start = 0
var end = N - 1

while start < end {
    if NArray[start] + NArray[end] == answer {
        count += 1
        start += 1
        end -= 1
    }
    
    else if NArray[start] + NArray[end] > answer {
        end -= 1
    }
    
    else {
        start += 1
    }
}

print(count)
