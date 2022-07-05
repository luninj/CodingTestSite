var N = Int(readLine()!)!

var Narray = Array(repeating: 0, count: N+1)

if N == 0 {
    print("0")
}

else if N == 1 {
    print("1")
}

else {
    Narray[1] = 1
    Narray[2] = 1
    
    for i in 2...N {
        Narray[i] = Narray[i-1] + Narray[i-2]
    }
    
    print(Narray.last!)
}