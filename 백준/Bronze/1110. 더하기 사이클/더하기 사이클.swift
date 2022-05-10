var x = Int(readLine()!)!   // 초기값 받기

var corr = x                // 변환되는 값 저장하는 변수. 초기값은 x
var count = 0               // 출력되는 값. 연산 횟수를 저장함
repeat {
    corr = ((corr % 10) * 10) + ((corr / 10) + (corr % 10)) % 10
    count += 1
}while corr != x

print(count)
