var N = Int(readLine()!)!

var count = 0

for i in 1...N {
    if i / 100 < 1 {
        count += 1
    }
    
    else if i / 100 >= 1 {
        let x = i / 100
        let y = (i / 10) % 10
        let z = i % 10
        
        if (x - y) == (y - z) {
            count += 1
        }
    }
}

print(count)
