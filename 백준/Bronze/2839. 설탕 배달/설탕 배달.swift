var x = Int(readLine()!)!

let y = 3
let z = 5
var count = 0
first : while true {
    if x % z == 0 {
        count += x / z
        break first
    }
    else {
        x -= 3
        count += 1
    }
    
    if x < 0 {
        count = -1
        break first
    }
}

print(count)
