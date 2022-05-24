var x : [[String]] = Array(repeating: Array(repeating: "", count: 50), count: 50) //받아올 수 있는 바둑판의 최대 크기
var inputNum = readLine()!.split(separator: " ").map{Int($0)!} // N과 M의 값 받기

let N = inputNum[0]
let M = inputNum[1]

for k in 0..<N {
    x[k] = readLine()!.map{String($0)} // 한 줄 씩 받아서 2차원 배열에 넣기
}

var paintNum = 2500  //칠해야하는 최솟값을 저장하는 변수

for i in 0..<N-7 {  // 2차원 배열의 처음부터 x좌표의 마지막 지점까지 반복
    for j in 0..<M-7 {  // 2차원 배열의 처음부터 y좌표의 마지막 지점까지 반복
        var count = 0   //칠해야 하는 숫자 저장
        
        for a in 0..<8 {    // 지금 현재의 좌표에서 바둑판을 만든다고 가정했을 때, 그 때 의 x좌표
            for b in 0..<8 {   // 지금 현재의 좌표에서 바둑판을 만든다고 가정했을 때, 그 때 의 y좌표
                if a % 2 == 0 {
                    if b % 2 == 0 && x[i+a][j+b] == "B" {
                        count += 1
                    }
                    
                    else if b % 2 == 1 && x[i+a][j+b] == "W" {
                        count += 1
                    }
                }
                
                else {
                    if b % 2 == 0 && x[i+a][j+b] == "W" {
                        count += 1
                    }
                    
                    else if b % 2 == 1 && x[i+a][j+b] == "B" {
                        count += 1
                    }
                }
            }
        }
        count = min(count, 64 - count) // count는 처음이 W일때로 가정해서 칠하는 수, 64-count는 처음이 B일때로 가정해서 칠하는수
        paintNum = min(count, paintNum) // 최종적으로 칠해야하는 수들의 가장 작은 수
    }
}
print(paintNum)


/*
우리가 예상하는 바둑판의 모양
 WBWBWBWB
 BWBWBWBW
 WBWBWBWB
 BWBWBWBW
 WBWBWBWB
 BWBWBWBW
 WBWBWBWB
 BWBWBWBW
 으로 처음이 W일때로 가정하고 준비한다.
 이 때, 처음이 B일때랑 비교하려면, 64에서 칠해야하는 숫자를 빼게 되면 처음이 B일때의 칠해야하는 숫자값과 같다.
 */
