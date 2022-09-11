var nm = readLine()!.split(separator: " ").map{Int($0)!}

var inputNum = readLine()!.split(separator: " ").map{Int($0)!}

var end = inputNum.max()!
var start = 0

while start <= end {
    var sum = 0
    let mid = (end + start) / 2
    
    for i in inputNum {
        if i - mid < 0 { continue }
        sum += (i - mid)
    }
    
    if sum < nm[1] {
        end = mid - 1
    }
    
    else {
        start = mid + 1
    }
}

print(start - 1)
