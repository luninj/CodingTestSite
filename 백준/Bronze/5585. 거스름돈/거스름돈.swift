var x = 1000 - Int(readLine()!)!

var countnum = 0

if x / 500 == 1 {
    x = x - 500
    countnum += 1
}


if x / 100 >= 1 {
    countnum += (x / 100)
    x = x - (x / 100) * 100
}

 
if x / 50 == 1 {
    x = x - 50
    countnum += 1
}


if x / 10 >= 1 {
    countnum += (x / 10)
    x = x - (x / 10) * 10
}

 
if x / 5 == 1 {
    x = x - 5
    countnum += 1
}


if x / 1 >= 1 {
    countnum += x
}
 
print(countnum)
