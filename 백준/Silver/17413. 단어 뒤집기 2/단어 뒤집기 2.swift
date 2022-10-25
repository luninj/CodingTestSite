var s = readLine()!

var ans = ""
var count = 0
var temp = ""

for i in s {
    if i == "<" {
        if !temp.isEmpty {
            ans += temp.reversed()
        }
        count += 1
        temp = ""
    }
    
    else if i == ">"{
        count -= 1
        ans += temp + ">"
        temp = ""
        continue
    }
    
    else if i == " " {
        if count == 0 {
            ans += temp.reversed() + " "
            temp = ""
            continue
        }
    }
    temp += String(i)
}

ans += temp.reversed()

print(ans)
