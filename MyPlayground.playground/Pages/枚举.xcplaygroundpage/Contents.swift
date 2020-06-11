//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*:

 Swift 中的枚举则更加灵活，并且不需给枚举中的每一个成员都提供值

 这个值可以是字符串、字符、任意的整数值，或者是浮点类型

 枚举成员可以指定任意类型的值来与不同的成员值关联储存

 Switch must be exhaustive(详尽)

 关联值

 相关值可以被提取为 switch 语句的一部分。你提取的每一个相关值都可以作为常量（用 let前缀) 或者变量（用 var前缀）在 switch的 case中使用

 原始值

 如果枚举没有原始类型，则不能有原始值

 作为相关值的另一种选择，枚举成员可以用相同类型的默认值预先填充（称为原始值）

 隐式指定的原始值

 当整数值被用于作为原始值时，每成员的隐式值都比前一个大一。如果第一个成员没有值，那么它的值是 0

 当字符串被用于原始值，那么每一个成员的隐式原始值则是那个成员的名称。

 从原始值初始化

 原始值初始化器是一个可失败初始化器，因为不是所有原始值都将返回一个枚举成员。

 递归枚举

 indirect enum ArithmeticExpression {
 case number(Int)
 case addition(ArithmeticExpression, ArithmeticExpression)
 case multiplication(ArithmeticExpression, ArithmeticExpression)
 }

 let five = ArithmeticExpression.number(5)
 let four = ArithmeticExpression.number(4)
 let sum = ArithmeticExpression.addition(five, four)
 let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

 func evaluate(_ expression: ArithmeticExpression) -> Int {
 switch expression {
 case let .number(value):
 return value
 case let .addition(left, right):
 return evaluate(left) + evaluate(right)
 case let .multiplication(left, right):
 return evaluate(left) * evaluate(right)
 }
 }

 print(evaluate(product))

 */


enum Password:String {
    case numeber
//    case numeber2
//    case numeber3
}

/*:
    - 区分关联值和原始值
	- 枚举所占内存大小
 
*/




//: [Next](@next)
