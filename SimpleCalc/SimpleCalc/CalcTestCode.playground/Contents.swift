//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

print("Enter an expression separated by returns (Extra options: count, avg, fact):")

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding: NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

//var expression = expression + input()

print(input())

/*
func convert(incoming:String) -> Int {
    return NSFormatter.numberFromString(incoming)!.integerValue
}
*/
var x = 42
var y = 34
var z = 10
var plus = "+"
var minus = "-"
var div = "/"
var mult = "*"

func input(expNum:Int) -> String {
    var result = ""
    switch expNum {
    case 0:
        return "10 4 25 17 5 count"
    case 1:
        return "2 4 6 8 10 avg"
    case 2:
        return "5 fact"
    default:
        result = "10 + 2"
    }
    return result
}

var expression = 0

var val1 = 0
var val2 = 0
var op = ""

func getValues() {
    //insert call to input and check for keyword before number
    var temp = input(0)
    if temp.containsString("avg") {
        for index in 0...temp.characters.count {
            temp.rangeOfString(" ")?.startIndex
        }
        print(temp)
    } else if temp.containsString("count") {
        
    } else if temp.containsString("fact") {
        
    } else {
        //val1 = convert(temp)
        var val = Int(temp)
    }
    /*if temp.characters.count > 1 {
    
    }*/
    val1 = x
    val2 = z
}

//calculates addition
func add(currentSum:Int, newVal:Int) -> Int {
    return currentSum + newVal
}

//calculates subtraction
func subtract(currentSum:Int, newVal:Int) -> Int {
    return currentSum - newVal
}

//calculates division
func divide(currentSum:Int, newVal:Int) -> Int {
    return currentSum / newVal
}

//calculates multiplcation
func multiply(currentSum:Int, newVal:Int) -> Int {
    return currentSum * newVal
}

func extendedCalc() {
    
}

let result = getValues()

print("Result: \(result)")