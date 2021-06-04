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

/**
 闭包 ----------
 */

//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//func backward (_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//
//let newnames = names.sorted(by: backward)
//print(newnames)

// 闭包表达式语法
/**
 { (parameters) -> return type in
     statements
 }
 */
//let reversedNames = names.sorted(by: {
//    (s1: String, s2: String) -> Bool in
//    return s1 > s2
//})

// 根据上下文推断类型
//let reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

// 单表达式闭包的隐式返回  单行表达式闭包可以通过省略 return 关键字来隐式返回单行表达式的结果
//let reversedNames = names.sorted(by: { s1, s2 in  s1 > s2 } )

// 参数名称缩写 通过 $0，$1，$2 来顺序调用闭包的参数
//let reversedNames = names.sorted(by: { $0 > $1 } )

// 运算符
//let reversedNames = names.sorted(by: > )


// 尾随闭包
// 如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数，将这个闭包替换成为尾随闭包的形式很有用
//let reversedNames = names.sorted() { $0 > $1 }
//print(reversedNames)

//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let numbers = [16, 58, 510]
//
//let strings = numbers.map{
//    (number) -> String in
//    var number = number
//    var output = ""
//    repeat{
//        output = digitNames[number % 10]! + output
//        number /= 10
//    }while number > 0
//    return output
//}
//print(strings)

// 值捕获
//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//
//let incrementByTen = makeIncrementer(forIncrement: 10)
//
//incrementByTen();
//incrementByTen();
//incrementByTen();
//let incrementBySeven = makeIncrementer(forIncrement: 7)
//incrementBySeven()

// 闭包是引用类型
//let alsoIncrementByTen = incrementByTen
//alsoIncrementByTen()
//// 返回的值为50

// 逃逸闭包
//var completionHandlers: [() -> Void] = []
//func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
//    completionHandlers.append(completionHandler)
//}
//func someFunctionWithNonescapingClosure(closure: () -> Void) {
//    closure()
//}
//
//class SomeClass {
//    var x = 10
//    func doSomething() {
//        someFunctionWithEscapingClosure { self.x = 100 }
//        someFunctionWithNonescapingClosure { x = 200 }
//    }
//}
//
//let instance = SomeClass()
//instance.doSomething()
//print(instance.x)
//// 打印出“200”
//completionHandlers.first?()
//print(instance.x)
//// 打印出“100”

// 自动闭包
//var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//print(customersInLine.count)
//// 打印出“5”
//
//let customerProvider = { customersInLine.remove(at: 0) }
//print(customersInLine.count)
//// 打印出“5”
//
//print("Now serving \(customerProvider())!")
//// 打印出“Now serving Chris!”
//print(customersInLine.count)
//// 打印出“4”
//
//// customersInLine i= ["Barry", "Daniella"]
//var customerProviders: [() -> String] = []
//func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
//    customerProviders.append(customerProvider)
//}
//collectCustomerProviders(customersInLine.remove(at: 0))
//collectCustomerProviders(customersInLine.remove(at: 0))
//
//print("Collected \(customerProviders.count) closures.")
//// 打印“Collected 2 closures.”
//for customerProvider in customerProviders {
//    print("Now serving \(customerProvider())!")
//}
//// 打印“Now serving Barry!”
//// 打印“Now serving Daniella!”

/**
 枚举 -----------
 */
//enum CompassPoint {
//    case north
//    case south
//    case east
//    case west
//}
//enum Planet {
//    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//var directionToHead = CompassPoint.west
//directionToHead = .south
//
//// 使用 Switch
//directionToHead = .south
//switch directionToHead {
//case .north:
//    print("Lots of planets have a north")
//case .south:
//    print("Watch out for penguins")
//case .east:
//    print("Where the sun rises")
//case .west:
//    print("Where the skies are blue")
//}
// 打印“Watch out for penguins”

// 枚举成员的遍历
//enum Beverage: CaseIterable {
//    case coffee, tea, juice
//}
//let numberOfChoices = Beverage.allCases.count
//for beverage in Beverage.allCases {
//    print(beverage)
//}

// 关联值
//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrCode(String)
//}
//var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
//switch productBarcode {
//case .upc(let numberSystem, let manufacturer, let product, let check):
//    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
//case .qrCode(let productCode):
//    print("QR code: \(productCode).")
//}
//
//switch productBarcode {
//case let .upc(numberSystem, manufacturer, product, check):
//    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
//case let .qrCode(productCode):
//    print("QR code: \(productCode).")
//}

// 原始值
// 原始值的隐式赋值
// 使用原始值初始化枚举实例

// 递归枚举
//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}
//let five = ArithmeticExpression.number(5)
//let four = ArithmeticExpression.number(4)
//let sum = ArithmeticExpression.addition(five, four)
//let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
//
//func evaluate(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case let .number(value):
//        return value
//    case let .addition(left, right):
//        return evaluate(left) + evaluate(right)
//    case let .multiplication(left, right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//print(evaluate(product))


/**
 类和结构体 -----------------
 */

// 类型定义的语法
// 结构体
struct Resolution {
    var width = 0
    var height = 0
}
// 类
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
// 结构体和类的实例
let someResolution = Resolution();
let someVideoMode = VideoMode();
// 属性访问
someResolution.height
someVideoMode.resolution.height
// 结构体类型的成员逐一构造器
let veg = Resolution(width: 640, height: 480)

// 结构体和枚举是指类型
// 类是引用类型
// 恒等运算符
// 指针 ？

/**
 属性 ---------------------------
 */
// 存储属性
//struct FixedLengthRange {
//    var firstValue: Int
//    let length: Int
//}
//var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
//// 该区间表示整数 0，1，2
//rangeOfThreeItems.firstValue = 6
// 该区间现在表示整数 6，7，8
// 常量结构体实例的存储属性
//let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//// 该区间表示整数 0，1，2，3
//rangeOfFourItems.firstValue = 6
//// 尽管 firstValue 是个可变属性，但这里还是会报错
// 延时加载存储属性
//class DataImporter {
//    /*
//    DataImporter 是一个负责将外部文件中的数据导入的类。
//    这个类的初始化会消耗不少时间。
//    */
//    var fileName = "data.txt"
//    // 这里会提供数据导入功能
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//    // 这里会提供数据管理功能
//}
//
//let manager = DataManager()
//manager.data.append("Some data")
//manager.data.append("Some more data")
//// DataImporter 实例的 importer 属性还没有被创建
//print(manager.importer.fileName)
//// DataImporter 实例的 importer 属性现在被创建了
//// 输出“data.txt”
// 存储属性和实例变量
// 计算属性
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// 简化 Setter 声明  可以使用默认名称 newValue
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
// 简化 Getter 声明
struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
// 只读计算属性
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
// 属性观察器
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("将 totalSteps 的值设置为 \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("增加了 \(totalSteps - oldValue) 步")
            }
        }
    }
}
// 属性包装器
@propertyWrapper
struct TwelveOrLess {
    private var number: Int
    init() { self.number = 0 }
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height)
// 打印 "0"

rectangle.height = 10
print(rectangle.height)
// 打印 "10"

rectangle.height = 24
print(rectangle.height)
// 打印 "12"

// 设置属性包装器的初始值

//@propertyWrapper
//struct SmallNumber {
//    private var maximum: Int
//    private var number: Int
//
//    var wrappedValue: Int {
//        get { return number }
//        set { number = min(newValue, maximum) }
//    }
//
//    init() {
//        maximum = 12
//        number = 0
//    }
//    init(wrappedValue: Int) {
//        maximum = 12
//        number = min(wrappedValue, maximum)
//    }
//    init(wrappedValue: Int, maximum: Int) {
//        self.maximum = maximum
//        number = min(wrappedValue, maximum)
//    }
//}

//struct ZeroRectangle {
//    @SmallNumber var height: Int
//    @SmallNumber var width: Int
//}
//
//var zeroRectangle = ZeroRectangle()
//print(zeroRectangle.height, zeroRectangle.width)
//
//struct UnitRectangle {
//    @SmallNumber var height: Int = 1
//    @SmallNumber var width: Int = 1
//}
//
//var unitRectangle = UnitRectangle()
//print(unitRectangle.height, unitRectangle.width)

//struct NarrowRectangle {
//    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
//    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
//}
//
//var narrowRectangle = NarrowRectangle()
//print(narrowRectangle.height, narrowRectangle.width)
//// 打印 "2 3"
//
//narrowRectangle.height = 100
//narrowRectangle.width = 100
//print(narrowRectangle.height, narrowRectangle.width)
//// 打印 "5 4"
//struct MixedRectangle {
//    @SmallNumber var height: Int = 1
//    @SmallNumber(maximum: 9) var width: Int = 2
//    @SmallNumber(wrappedValue: 2, maximum: 9) var width1: Int
//}

// 从属性包装器中呈现一个值
@propertyWrapper
struct SmallNumber {
    private var number: Int
    var projectedValue: Bool
    init() {
        self.number = 0
        self.projectedValue = false
    }
    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 4
print(someStructure.$someNumber)
//// 打印 "false"
//
//someStructure.someNumber = 55
//print(someStructure.$someNumber)
//// 打印 "true"

// 全局变量和局部变量

// 类型属性 (静态属性)
// 类型属性语法 静态属性
//struct SomeStructure1 {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 1
//    }
//}
//enum SomeEnumeration {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 6
//    }
//}
//class SomeClass {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 27
//    }
//    class var overrideableComputedTypeProperty: Int {
//        return 107
//    }
//}
// 获取和设置类型属性的值
//print(SomeStructure.storedTypeProperty)
//SomeStructure.storedTypeProperty = "Another value."
