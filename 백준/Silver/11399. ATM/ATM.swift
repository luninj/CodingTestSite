var N = Int(readLine()!)!

var arr : [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var sum = 0
for i in 0..<N {
    sum += arr[i] * (N - i)
}

print(sum)
