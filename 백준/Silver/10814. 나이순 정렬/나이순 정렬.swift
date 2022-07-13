struct member{
    var name: String
    var age: Int
    var order: Int
}

let n = Int(readLine()!)!
var memArr: [member] = []


for i in 0..<n {
    let a = readLine()!.split(separator: " ").map{String($0)}

    let mem = member(name: a[1], age: Int(a[0])!, order: i)
    
    memArr.append(mem) //3번
}

memArr.sort{$0.age == $1.age ? $0.order < $1.order : $0.age < $1.age}

for j in 0..<n {
    print("\(memArr[j].age) \(memArr[j].name)")
}
