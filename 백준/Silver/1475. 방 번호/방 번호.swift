var inputInt = readLine()!

var tempArr : [Int] = Array(repeating: 0, count: 10)

for i in inputInt {
    var x = Int(String(i))!
    tempArr[x] += 1
}

tempArr[6] = (tempArr[9] + tempArr[6] + 1) / 2
tempArr[9] = 0

print(tempArr.max()!)