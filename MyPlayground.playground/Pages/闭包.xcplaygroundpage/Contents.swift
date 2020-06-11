//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*:
 
 闭包表达式语法的一般形式
 {
 (形参列表)-> 返回类型 in
 语句列表
 }
 
 闭包是可以在你的代码中被传递和引用的功能性独立代码块
 
 闭包是可以在你的代码中被传递和引用的功能性独立代码块
 
 闭包是可以在你的代码中被传递和引用的功能性独立代码块
 
 这意味着 (String, String)和 Bool 类型不需要写成闭包表达式定义中的一部分。因为所有的类型都能被推断，返回箭头 ( ->) 和围绕在形式参数名周围的括号也能被省略
 reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
 
 从单表达式闭包隐式返回
 
 单表达式闭包能够通过从它们的声明中删掉 return 关键字来隐式返回它们单个表达式的结
 reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
 
 简写的实际参数名
 
 Swift 自动对行内闭包提供简写实际参数名，你也可以通过 $0 , $1 , $2 等名字来引用闭包的实际参数值。
 如果你在闭包表达式中使用这些简写实际参数名，那么你可以在闭包的实际参数列表中忽略对其的定义，并且简写实际参数名的数字和类型将会从期望的函数类型中推断出来。 in  关键字也能被省略，因为闭包表达式完全由它的函数体组成：
 
 reversedNames = names.sorted(by: { $0 > $1 } )
 这里， $0 和 $1 分别是闭包的第一个和第二个 String 实际参数。
 
 运算符函数
 reversedNames = names.sorted(by: >)
 
 尾随闭包
 
 如果你需要将一个很长的闭包表达式作为函数最后一个实际参数传递给函数，使用尾随闭包将增强函数的可读性
 
 reversedNames = names.sorted(by: { (s1: Int, s2: Int) -> Bool in return s1 > s2 } )
 
 reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
 
 reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
 
 reversedNames = names.sorted(by: >)
 
 reversedNames = names.sorted(by: { $0 > $1 } )
 
 reversedNames = names.sorted() { $0 > $1 }
 
 reversedNames = names.sorted { $0 > $1 }

*/

//: [Next](@next)
