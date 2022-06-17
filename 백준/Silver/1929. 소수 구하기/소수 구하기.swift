var MN = readLine()!.split(separator: " ").map{Int($0)!}

var MNArray = Array(0...MN[1])

MNArray[1] = 0

for i in 2...MN[1] {
    if MNArray[i] == 0 {
        continue
        
    }
    for j in stride(from: i + i, through: MN[1], by: i) {
        MNArray[j] = 0
    }
}

for w in MN[0]...MN[1] {
    if MNArray[w] != 0 {
        print("\(MNArray[w])")
    }
}
