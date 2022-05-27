var inputNum : String = readLine() ?? ""

var a : [String.Element] = inputNum.sorted(by: >)

var x : String = ""

for i in a {
    x.append(i)
}
print(x)