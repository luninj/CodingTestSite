var AB1 = (readLine() ?? "").split(separator: " ").map{Int($0) ?? 0}
var AB2 = (readLine() ?? "").split(separator: " ").map{Int($0) ?? 0}

var A1 = (AB1[1] > AB2[1]) ? AB1[0] : AB2[0]
var A2 = (AB1[1] <= AB2[1]) ? AB1[0] : AB2[0]
var B1 = (AB1[1] > AB2[1]) ? AB1[1] : AB2[1]
var B2 = (AB1[1] <= AB2[1]) ? AB1[1] : AB2[1]

var lar = B1
var sml = B2

while lar % sml != 0 {
    let temp1 = sml
    sml = lar % sml
    lar = temp1
}
var r = sml

var B3 = B1 * B2 / r
var A3 = B1 / r * A2 + B2 / r * A1

lar = (B3 > A3) ? B3 : A3
sml = (B3 <= A3) ? B3 : A3


while lar % sml != 0 {
    let temp1 = sml
    sml = lar % sml
    lar = temp1
}

r = sml

print((A3)/r,(B3)/r)
