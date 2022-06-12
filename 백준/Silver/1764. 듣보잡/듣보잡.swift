var inputNum = readLine()!.split(separator: " ").map{Int($0)!}

var N = Set<String>()
var M = Set<String>()

for _ in 0..<inputNum[0] {
    N.insert(readLine()!)
}

for _ in 0..<inputNum[1] {
    M.insert(readLine()!)
}

var NM = N.intersection(M).sorted()

print(NM.count)
print(NM.joined(separator: "\n"))