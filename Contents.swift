import UIKit

var greeting = "Hello, playground"
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// 元组
let http404Error = (404, "Not Found")

var serverResponseCode: Int? = 404
// serverResponseCode 包含一个可选的 Int 值 404
serverResponseCode = nil
// serverResponseCode 现在不包含值

var ces: Optional<Int> = nil
ces = 2
/**
 可选绑定
 */
if let actualNumber = Int("3"){
    print("ceshi\(actualNumber)")
}else{
    print("???")
}

if let firstNumber = Int("4"), let secondNumber = Int("b42b") {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// 输出“4 < 42 < 100”

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// 输出“4 < 42 < 100”

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要感叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号

var optionalString = assumedString
optionalString = nil;

// optionalString 的类型是 "String?"，assumedString 也没有被强制解析。
