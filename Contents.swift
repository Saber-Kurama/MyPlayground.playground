import UIKit

/**
  基础部分----------
 */
// 常量和变量
var currentlog = 10; currentlog = 3
let maximumnuner = "saber"
// 类型注解
var maxas: String ; maxas = "maxas"
// 常量和变量的命名
// 输出常量和变量
print(maxas)

// 注释

// 这是一个注释
/* 这也是一个注释，
但是是多行的 */
/* 这是第一个多行注释的开头
/* 这是第二个被嵌套的多行注释 嵌套注释*/
这是第一个多行注释的结尾 */

// 分号

// 整数
// 整数范围
let minValue = UInt8.min  // minValue 为 0，是 UInt8 类型
let maxValue = UInt8.max  // maxValue 为 255，是 UInt8 类型
// Int UInt Double Float
// 类型安全和类型推断
// 数值型字面量
let decimalInteger = 17
let binaryInteger = 0b10001       // 二进制的17
let octalInteger = 0o21           // 八进制的17
let hexadecimalInteger = 0x11     // 十六进制的17
// exp
// 1.25e2 表示 1.25 × 10^2，等于 125.0
// 1.25e-2 表示 1.25 × 10^-2，等于 0.0125
// 0xFp2 表示 15 × 2^2，等于 60.0
// 0xFp-2 表示 15 × 2^-2，等于 3.75
/*
 数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量：
 */
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
// 数值型类型转换
// 整数转换
//let cannotBeNegative: UInt8 = -1
//// UInt8 类型不能存储负数，所以会报错
//let tooBig: Int8 = Int8.max + 1
//// Int8 类型不能存储超过最大值的数，所以会报错
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
// 整数和浮点数转换
// 类型别名
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound 现在是 0
// 布尔值
let orangesAreOrange = true
let turnipsAreDelicious = false
// 元组
let http404Error = (404, "Not Found")

// 可选类型
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
// nil
var serverResponseCode: Int? = 404
// serverResponseCode 包含一个可选的 Int 值 404
serverResponseCode = nil
// serverResponseCode 现在不包含值
// if 语句以及强制解析
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// 输出“convertedNumber has an integer value of 123.”
// 可选绑定
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}
// 输出“'123' has an integer value of 123”
// 隐式解析可选类型
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要感叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号

// 错误处理
//func canThrowAnError() throws {
//    // 这个函数有可能抛出错误
//}
//do {
//    try canThrowAnError()
//    // 没有错误消息抛出
//} catch {
//    // 有一个错误消息抛出
//}

// 断言和先决条件
//// 使用断言进行调试 开发环境
//let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")
//// 因为 age < 0，所以断言会触发
//// 强制执行先决条件 生成环境
//// 在一个下标的实现里...
//precondition(index > 0, "Index must be greater than zero.")

/**
  基本运算符----------
 */

//// 赋值运算符
//let b = 10
//var a = 5
//a = b
//// a 现在等于 10
//let (x, y) = (1, 2)
//// 现在 x 等于 1，y 等于 2
// 算术运算符
1 + 2       // 等于 3
5 - 3       // 等于 2
2 * 3       // 等于 6
10.0 / 2.5  // 等于 4.0
"hello, " + "world"  // 等于 "hello, world"
// 求余运算符
9 % 4    // 等于 1
// 一元负号运算符
// 一元正号运算符
//// 组合赋值运算符
//var a = 1
//a += 2
//// a 现在是 3
// 比较运算符
// a == b; a != b; a > b; a < b; a >= b; a <= b
// 三元运算符
// a ? a : b
// 空合运算符（Nil Coalescing Operator
// a ?? b == a != nil ? a! : b
// 区间运算符
// 闭区间运算符
//for index in 1...5 {
//    print("\(index) * 5 = \(index * 5)")
//}
// 半开区间运算符
//let names = ["Anna", "Alex", "Brian", "Jack"]
//let count = names.count
//let start = 0;
//for i in start..<3 {
//    print("第 \(i + 1) 个人叫 \(names[i])")
//}
//// 单侧区间
//for name in names[2...] {
//    print(name)
//}
//for name in names[...2] {
//    print(name)
//}
// 逻辑运算符
// !a; a && b; a || b; // 支持短路
// 使用括号来明确优先级

/**
 字符串和字符 --------
 */

/**
 集合类型 -----------
 */
// 数组（Arrays）
// 集合（Sets）
// 集合操作
// 字典
// [key 1: value 1, key 2: value 2, key 3: value 3]

/**
 控制流
 */
// For-In 循环
//let names = ["Anna", "Alex", "Brian", "Jack"]
//for name in names {
//    print("Hello, \(name)!")
//}
//let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
//for(animalName, leggCount) in numberOfLegs{
//    print("\(animalName) has \(leggCount) legs")
//}
//// 如果你不需要区间序列内每一项的值，你可以使用下划线（_）替代变量名来忽略这个值
//let base = 3
//let power = 10
//var answer = 1
//for _ in 1...power {
//    answer *= base
//}
//print("\(base) to the power of \(power) is \(answer)")

// while 循环
// repeat-while
// if 条件语句
//// Switch (不存在隐式的贯穿)
//// 区间匹配
//let approximateCount = 62
//let countedThings = "moons orbiting Saturn"
//let naturalCount: String
//switch approximateCount {
//case 0:
//    naturalCount = "no"
//case 1..<5:
//    naturalCount = "a few"
//case 5..<12:
//    naturalCount = "several"
//case 12..<100:
//    naturalCount = "dozens of"
//case 100..<1000:
//    naturalCount = "hundreds of"
//default:
//    naturalCount = "many"
//}
//print("There are \(naturalCount) \(countedThings).")
//// 输出“There are dozens of moons orbiting Saturn.”
//// 元组
//let somePoint = (1, 1)
//switch somePoint {
//case (0, 0):
//    print("\(somePoint) is at the origin")
//case (_, 0):
//    print("\(somePoint) is on the x-axis")
//case (0, _):
//    print("\(somePoint) is on the y-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is inside the box")
//default:
//    print("\(somePoint) is outside of the box")
//}
//// 输出“(1, 1) is inside the box”
//// 值绑定（Value Bindings）
//let anotherPoint = (2, 0)
//switch anotherPoint {
//case (let x, 0):
//    print("on the x-axis with an x value of \(x)")
//case (0, let y):
//    print("on the y-axis with a y value of \(y)")
//case let (x, y):
//    print("somewhere else at (\(x), \(y))")
//}
//// 输出“on the x-axis with an x value of 2”
//// Where
//let yetAnotherPoint = (1, -1)
//switch yetAnotherPoint {
//case let (x, y) where x == y:
//    print("(\(x), \(y)) is on the line x == y")
//case let (x, y) where x == -y:
//    print("(\(x), \(y)) is on the line x == -y")
//case let (x, y):
//    print("(\(x), \(y)) is just some arbitrary point")
//}
//// 输出“(1, -1) is on the line x == -y”
//// 复合型 Cases
//let someCharacter: Character = "e"
//switch someCharacter {
//case "a", "e", "i", "o", "u":
//    print("\(someCharacter) is a vowel")
//case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
//     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
//    print("\(someCharacter) is a consonant")
//default:
//    print("\(someCharacter) is not a vowel or a consonant")
//}
//// 输出“e is a vowel”
// 控制转移语句
// Continue
// Break
// 循环语句中的 break
// Switch 语句中的 break
// Fallthrough 贯穿（Fallthrough）
//let integerToDescribe = 5
//var description = "The number \(integerToDescribe) is"
//switch integerToDescribe {
//case 2, 3, 5, 7, 11, 13, 17, 19:
//    description += " a prime number, and also"
//    fallthrough
//default:
//    description += " an integer."
//}
//print(description)
//// 输出“The number 5 is a prime number, and also an integer.”
// 带标签的语句
//gameLoop: while square != finalSquare {
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    switch square + diceRoll {
//    case finalSquare:
//        // 骰子数刚好使玩家移动到最终的方格里，游戏结束。
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        // 骰子数将会使玩家的移动超出最后的方格，那么这种移动是不合法的，玩家需要重新掷骰子
//        continue gameLoop
//    default:
//        // 合法移动，做正常的处理
//        square += diceRoll
//        square += board[square]
//    }
//}
//print("Game over!")
// return 提前退出
//func greet(person: [String: String]) {
//    guard let name = person["name"] else {
//        return
//    }
//
//    print("Hello \(name)!")
//
//    guard let location = person["location"] else {
//        print("I hope the weather is nice near you.")
//        return
//    }
//
//    print("I hope the weather is nice in \(location).")
//}
//
//greet(person: ["name": "John"])
//// 输出“Hello John!”
//// 输出“I hope the weather is nice near you.”
//greet(person: ["name": "Jane", "location": "Cupertino"])
//// 输出“Hello Jane!”
//// 输出“I hope the weather is nice in Cupertino.”
// throw
// 检测 API 可用性
//if #available(iOS 10, macOS 10.12, *) {
//    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
//} else {
//    // 使用先前版本的 iOS 和 macOS 的 API
//}

/**
 函数---------------------
 */

// 函数的定义和调用
//func greet(person: String) -> String {
//    let greeting = "hello, " + person + "!"
//    return greeting
//}
//print(greet(person: "sads"))
// 函数参数和返回值
// 无参函数
// 多参函数
// 无返回值函数
//func greet() {
//    print("sabner")
//}
// 多重返回函数 // 可选元组返回类型
//func greet() -> (min: Int, max: Int, mid: Int?)? {
//    return nil
//    return (1, 3, nil)
//    return (1, 3,  2)
//}
//print("\(greet())--\(greet())--\(greet())")
// 隐式返回的函数 任何一个可以被写成一行 return 语句的函数都可以忽略 return。
//func greeting(for person: String) -> String {
//    "Hello, " + person + "!"
//}
//print(greeting(for: "Dave"))
//// 打印 "Hello, Dave!"
//
//func anotherGreeting(for person: String) -> String {
//    return "Hello, " + person + "!"
//}
//print(anotherGreeting(for: "Dave"))
//// 打印 "Hello, Dave!"

// 函数参数标签和参数名称
// 指定参数标签
//func greet(person: String, from hometown: String) -> String {
//    return "Hello \(person)!  Glad you could visit from \(hometown)."
//}
//print(greet(person: "Bill", from: "Cupertino"))
//// 打印“Hello Bill!  Glad you could visit from Cupertino.”
// 忽略参数标签
//func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
//     // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
//}
//someFunction(1, secondParameterName: 2)
// 默认参数值
//func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
//    // 如果你在调用时候不传第二个参数，parameterWithDefault 会值为 12 传入到函数体中。
//}
//someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault = 6
//someFunction(parameterWithoutDefault: 4) // parameterWithDefault = 12
// 可变参数 一个函数最多只能拥有一个可变参数。
//func arithmeticMean(_ numbers: Double...) -> Double {
//    var total: Double = 0
//    for number in numbers {
//        total += number
//    }
//    return total / Double(numbers.count)
//}
//arithmeticMean(1, 2, 3, 4, 5)
//// 返回 3.0, 是这 5 个数的平均数。
//arithmeticMean(3, 8.25, 18.75)
//// 返回 10.0, 是这 3 个数的平均数。
// 输入输出参数 默认不能修改参数
//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//var someInt = 3
//var anotherInt = 107
//swapTwoInts(&someInt, &anotherInt)
//print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
//// 打印“someInt is now 107, and anotherInt is now 3”

// 函数类型
// 使用函数类型
// var mathFunction: (Int, Int) -> Int = addTwoInts
// 函数类型作为参数类型
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("Result: \(mathFunction(a, b))")
//}
//printMathResult(addTwoInts, 3, 5)
//// 打印“Result: 8”
// 函数类型作为返回类型
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}

// 嵌套函数
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? stepBackward : stepForward
//}
//var currentValue = -4
//let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
//// moveNearerToZero now refers to the nested stepForward() function
//while currentValue != 0 {
//    print("\(currentValue)... ")
//    currentValue = moveNearerToZero(currentValue)
//}
//print("zero!")

