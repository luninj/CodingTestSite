func solution(_ x:Int) -> Bool {
    let arr = Array(String(x))
    var test = 0
    for i in arr {
        test += Int(String(i))!
    }

    return (x % test) == 0 ? true : false
}