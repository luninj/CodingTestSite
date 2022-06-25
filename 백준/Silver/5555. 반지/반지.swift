import Foundation

var check = readLine()!

var N = Int(readLine()!)!

var count = 0

for _ in 0..<N {
    var temp = readLine()!
    
    temp += temp
    
    if String(temp).contains(check) {
        count += 1
    }
}

print(count)
