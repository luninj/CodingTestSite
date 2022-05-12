func insertNum() -> [String] {
    var x : [String] = []
    while true {
        var y = readLine() ?? ""
        if y == "0" {
            break
        }
        else {
            x.append(y)
        }
    }
    return x
}

func compareNum(_ z : [String]) {
    for i in z {
        var w : String = ""
        for j in i.reversed() {
            w.append(j)
        }
        if w == i {
            print("yes")
        }
        else {
            print("no")
        }
    }
}

var z = insertNum()
compareNum(z)