var N = Int(readLine()!)!

var intarr = Array(1...N)
var point = 0

if N == 1 {
    print("1")
}

else {
    while true {
        intarr[point] = 0
        intarr.append(intarr[point+1])
        intarr[point+1] = 0
        if intarr[intarr.count - 2] == 0 {
            print(intarr.last!)
            break
        }
        point += 2
    }
}
