var selfNum : [Int] = Array(repeating: 1, count: 10000)

for i in 1...10000 {
    var temp = i + (i / 1000 % 10) + (i / 100 % 10) + (i / 10 % 10) + (i % 10) - 1
    if temp < 10000 {
        selfNum[temp] = 0
    }
}

for i in 0...9999 {
    if selfNum[i] == 1 {
        print(i+1)
    }
}
