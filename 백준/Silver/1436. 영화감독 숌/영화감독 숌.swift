var n = Int(readLine()!)!

var count = 0

for i in 666...10000000 {
    var temp = i
    while temp >= 666 {
        if temp % 1000 == 666 {
            count += 1
            break
        }
        
        temp /= 10
    }
    
    if count == n {
        print(i)
        break
    }
}
