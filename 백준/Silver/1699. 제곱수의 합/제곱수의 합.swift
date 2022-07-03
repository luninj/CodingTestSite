import Foundation

var N = Int(readLine()!)!

var array : [Int] = Array(repeating: 0, count: 100001)

for i in 1...N {
    array[i] = i
    for j in 1...i {
        if j * j > i {
            break
        }
        
        array[i] = min(array[i], array[i - (j*j)] + 1)
    }
}

print(array[N])
