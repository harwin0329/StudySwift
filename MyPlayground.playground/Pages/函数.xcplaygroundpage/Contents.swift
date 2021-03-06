//: [Previous](@previous)

import Foundation

/*:

 形式参数都是 let 类型

 默认参数

 省略标签（大多数情况不建议）

 可以有可变参数，但至多只能拥有一个可变参数

 可变参数不能拥有默认值

 紧跟在可变参数后面的参数不能省略参数标签

 可输入输出参数类型 inout

 inout 只能传入可以被多次赋值的

 不允许在参数名称前面的“inout”，将其放在参数类型前面,变量在初始化之前通过引用传递

 多返回值的函数 元组

 元组的成员值在函数的返回类型部分被命名，所以它们可以通过使用点语法

 元组类型中不允许使用默认参数

 元组参数名可以省略，此时可以按索引 .0 、.1获取值

 函数返回类型 可选

 隐式返回的函数，如果函数体是一个单一的表达式，那么函数隐式返回这个表达式

 每一个函数的形式参数都包含实际参数标签和形式参数名，默认情况下，形式参数使用它们的形式参数名作为实际参数标签
 调用函数的时候每一个实际参数前边都要写实际参数标签 (_ 本身就是省略)

 # 函数类型
 每一个函数都有一个特定的函数类型，它由形式参数类型，返回类型组成

 函数变量

 和其他的类型一样，当你指定一个函数为常量或者变量的时候，可以将它留给 Swift 来对类型进行推断

 函数类型 作为形式参数类型

 函数类型 作为返回类型

 内嵌函数

 数组没有初始化 使用时 编译器会提示

 ---
 
 重写override 重载overload

 - 默认参数值和函数重载一起使用时产生歧义时，编译器不会报错
 - 可变参数、省略参数标签 ，函数重载一起使用时产生歧义时， 编译器有可能报错

 如果开启了编译器优化，编译器会自动将某些函数变为内联函数

 将函数调用展开成函数体
 
  	哪些函数不会内联
 	- 函数体比较长
 	- 包含递归调用
    - 包含动态派发（多态，动态绑定）
 
 每一个函数都是有类型的，函数类型由形式参数类型、 返回类型组成
 
 - 函数类型 作为形式参数类型
 - 函数类型 作为返回类型
 
 	### 函数类型作为属性
 
 返回值是函数的函数 称之为高阶函数
 
 
	Void 是空元组
 
 
 	我v
 
 
 @inline(never)  永远不会内联
 @inline(__always)  开启了编译器优化后，即使函数体长，也会内联（包含递归调用，动态派发除外）
 
 

 */




//: [next](@next)
