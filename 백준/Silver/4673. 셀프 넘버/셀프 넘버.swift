var selfNum : [Int] = Array(repeating: 1, count: 10000)

for i in 1...10000 {
    if i / 10 == 0 {
        selfNum[i+i-1] = 0
    }
    
    else if i / 100 == 0 && i / 10 != 0 {
        selfNum[i + (i / 10) + (i % 10) - 1] = 0
    }
    
    else if i / 1000 == 0 && i / 100 != 0 {
        selfNum[i + (i / 100) + ((i / 10) % 10) + (i % 10) - 1] = 0
    }
    
    else if i / 10000 == 0 && i / 1000 != 0 {
        let temp = i + (i / 1000) + ((i / 100) % 10) + ((i / 10) % 10) + (i % 10) - 1
        if temp < 10000 {
            selfNum[temp] = 0
        }
    }
}



for i in 0...9999 {
    if selfNum[i] == 1 {
        print(i+1)
    }
}
