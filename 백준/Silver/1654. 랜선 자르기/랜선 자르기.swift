var nk = readLine()!.split(separator: " ").map{Int($0)!}

var inputNum : [Int] = []

for _ in 0..<nk[0] {
    inputNum.append(Int(readLine()!)!)
}

var result = 0

var start = 1
var end = inputNum.max()!

while start <= end {
    var count = 0
    let mid = (start + end) / 2
    
    for i in inputNum {
        count += i / mid
    }
    
    if count >= nk[1] {
        if result < mid {
            result = mid
        }
        start = mid + 1
    }
    
    else {
        end = mid - 1
    }
}

print(result)
