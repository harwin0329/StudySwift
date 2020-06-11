//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*:
	区别在于可选链会在可选项为 nil 时得体地失败，而强制展开则在可选项为 nil 时触发运行时错误
 
 
 
 
 
 
 ---

 */

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
//john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "John's residence has 1 room(s)."


URL
// 可选项默认值

var i: Int?
// var i:Int? = nil  等价

var j: Int
// 使用之前必须初始化

print(i)
// print(j) // Variable 'j' used before being initialized

// 强制解包
// print(i!) // Unexpectedly found nil while unwrapping an Optional value

if let a = i {
    print(a)
} else {
    print(i)
}


//guard let a = i else {
//    print(i)
//    return
//}

//// 可选项类型
//
// if let a = i!{
//    print(a)
// }
// else {
// }

//: [Next](@next)
