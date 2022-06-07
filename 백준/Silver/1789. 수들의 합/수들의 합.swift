var inputNum = Int(readLine()!)!

var count = 0
var total = 0

while true {
    count += 1
    total += count
    if total > inputNum {
        break
    }
}

print(count-1)
