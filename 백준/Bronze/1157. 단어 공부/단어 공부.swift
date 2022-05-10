var x = readLine() ?? ""
x = x.uppercased()

var temp : [Int] = Array(repeating: 0, count: 26)   //알파벳 횟수 배열
for i in x {                // 알파벳 횟수 배열에 값을 넣는 로직
    var z = Int(i.asciiValue!) - 65
    temp[z] += 1
}

var max = -1                //가장 많이 쓰인 알파벳 횟수
var y = 0                   //그 알파벳이 저장된, 배열의 방 위치
for i in 0...25 {           //최대로 많이 쓰인 알파벳을 찾는 로직
    if max <= temp[i] {
        max = temp[i]
        y = i
        
    }
}

var a = temp.sorted(by: >)  // 알파벳 배열 정렬 후 동일한 횟수가 있으면 ? 출력, 아닐경우 답 출력
if a[0] == a[1] {
    print("?")
}
else {
    print(UnicodeScalar(y+65)!)
}
