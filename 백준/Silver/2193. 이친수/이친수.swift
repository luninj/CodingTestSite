var N = Int(readLine()!)!

if N == 1 {
    print(1)
}

else if N == 2 {
    print(1)
}

else {
    var NArray : [Int] = Array(repeating: 0, count: N)

    NArray[0] = 1
    NArray[1] = 1

    for i in 2..<N {
        NArray[i] = NArray[i-1] + NArray[i-2]
    }

    print(NArray[N-1])
}
