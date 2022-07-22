var N = Int(readLine()!)!

var temp = readLine()!.split(separator: " ").map{Int($0)!}

var s = Set(temp).sorted()

for i in s {
    print(i, terminator: " ")
}
