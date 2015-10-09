//
//  main.swift
//  SimpleCalc
//
//  Created by Vivyan Woods on 10/7/15.
//  Copyright © 2015 Vivyan Woods. All rights reserved.
//

import Foundation

//prints introduction
print("Enter an expression separated by returns:")
print("(Extra options: count, avg, fact)")
print("Enter extras in format: 1 2 3 avg")

//gets input from the user
func input() -> String {
    let 😈 = NSFileHandle.fileHandleWithStandardInput()
    let inputData = 😈.availableData
    let result = NSString(data: inputData, encoding: NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}
/*
func convert(incoming:String) -> Int {
    return NSFormatter().numberFromString(incoming)!.integerValue
}*/

//calculates addition
func add(currentSum:Double!, newVal:Double!) -> Double {
    return currentSum + newVal
}

//calculates subtraction
func subtract(currentSum:Double!, newVal:Double!) -> Double {
    return currentSum - newVal
}

//calculates division
func divide(currentSum:Double!, newVal:Double!) -> Double {
    return currentSum / newVal
}

//calculates multiplcation
func multiply(currentSum:Double!, newVal:Double!) -> Double {
    return currentSum * newVal
}

print()
print("Need me to calculate something?")

var response = input()

while response.lowercaseString.containsString("y") {

var expression = input() // first thing user typed
var val1: Double! = 0 //storage value for simple calculation
var val2: Double! = 0 //storage value for simple calculation
var op = "" //stored operator

// calculations for non-basic functions
if expression.containsString(" ") {
    if expression.containsString("avg") { // calculates average of numbers given
        var index = expression.rangeOfString(" ")!.endIndex
        var sum: Double! = Double(expression.substringToIndex(expression.rangeOfString(" ")!.startIndex))
        sum = add(0, newVal: sum)
        expression = expression.substringFromIndex(index)
        var count: Double = 1
        while expression.containsString(" ") {
            index = expression.rangeOfString(" ")!.endIndex
            sum = add(sum, newVal: Double(expression.substringToIndex(expression.rangeOfString(" ")!.startIndex)))
            expression = expression.substringFromIndex(index)
            count++
        }
        sum = divide(sum, newVal: count)
        print("Result: \(sum)")
    } else if expression.containsString("count") { // counts number of elements given
        var index = expression.rangeOfString(" ")!.endIndex
        expression = expression.substringFromIndex(index)
        var count = 1
        while expression.containsString(" ") {
            index = expression.rangeOfString(" ")!.endIndex
            expression = expression.substringFromIndex(index)
            count++
        }
        print("Result: \(count)")
    } else if expression.containsString("fact") { //calculates factorial of number
        var index = expression.rangeOfString(" ")!.endIndex
        var stringNum = expression.substringToIndex(expression.rangeOfString(" ")!.startIndex)
        if stringNum.containsString(".") {
            print("Whoa back up. You can't take a precise factorial of a decimal number!")
        } else {
            var num: Int! = Int(stringNum)
            expression = expression.substringFromIndex(index)
            var total: Double! = 1
            var isNegative = false
            if num < 0 { // handles negative numbers
                num = num + (-2 * num)
                isNegative = true
            }
            for index in 1...num {
                total = multiply(total, newVal: Double(index))
            }
            if isNegative {
                total = total + (-2 * total)
            }
            print("Result: \(total)")
        }
    } else { // request wasn't one of the listed extras
        print("I don't know what you want from me ;-;")
    }
// calculations for addition, subtraction, multiplication and division
} else {
    val1 = Double(expression)
    op = input()
    val2 = Double(input())
    print("Result: ")
    if op == "+" {
        print(add(val1, newVal: val2))
    } else if op == "-" {
        print(subtract(val1, newVal: val2))
    } else if op == "/" {
        if val2 == 0 {
            print("SYNTAX ERROR")
        } else {
            print(divide(val1, newVal: val2))
        }
    } else if op == "*" {
        print(multiply(val1, newVal: val2))
    } else { // operator given wasn't standard
        print("I don't know what you want from me ;-;")
    }
}
    print()
    print("Need me to calculate something?")
    response = input()
}