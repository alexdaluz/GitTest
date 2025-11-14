import UIKit



func sayHello(m:String) {
    print(m)
}

func doAdd(a:Int, b:Int) -> Int {
    var sum = a + a + b + b
    return sum
}
func doAdd(_ a:Int, _ b:Int) -> Int {
    var sum = a + b
    return sum
}
doAdd(1, 1)

let result = doAdd(3, 4)
print(result)

