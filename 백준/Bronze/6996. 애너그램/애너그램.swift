var inputNum = Int(readLine()!)!

var corr : [String] = []
for i in 0..<inputNum {
    var temp = readLine()!.split(separator: " ")
    if temp[0].sorted() == temp[1].sorted() {
        corr += [temp[0] + " & " + temp[1] + " are anagrams."]
    }
    else {
        corr += [temp[0] + " & " + temp[1] + " are NOT anagrams."]
    }
}

for i in corr {
    print(i)
}
