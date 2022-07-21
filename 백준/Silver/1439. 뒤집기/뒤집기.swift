var S = Array(readLine()!)

var Zero: Int = 0
var One: Int = 0
var Count = 0

if S[0] == "0"{
    Zero = 1
}

else{
    One = 1
}

for i in 1..<S.count{
    if S[i] != S[i-1]{
        if S[i] == "0"{
            Zero += 1
        }
        
        else{
            One += 1
        }
    }
}

print(min(Zero, One))
