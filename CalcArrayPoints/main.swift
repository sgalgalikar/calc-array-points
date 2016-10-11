//
//  main.swift
//  CalcArrayPoints
//
//  Created by Sanjana Galgalikar on 10/10/16.
//  Copyright © 2016 Sanjana Galgalikar. All rights reserved.
//

import Foundation

print("Hello, World!")


//calculator
func add (left:Int, right:Int) -> Int {
    return left + right
}


func subtract (num1:Int, num2:Int) -> Int {
    return num1 - num2
}


func multiply (num1:Int, num2:Int) -> Int {
    return num1 * num2
}


func divide (num1:Int, num2:Int) -> Int {
    return num1 / num2
}

func math (num1:Int, num2:Int, op: (Int, Int) -> Int) -> Int {
    return op(num1, num2)
}


//Array fun
func arrayAdd(numArray:[Int]) -> Int {
    var sum = 0
    for int in numArray {
        sum += numArray[int]
    }
    return sum
}

func multArray(numArray: [Int]) -> Int{
    var total = 1
    for int in numArray {
        total *= numArray[int]
    }
    return total
}

func countArray(numArray: [Int]) -> Int {
    return numArray.count
}

func avgArray(numArray: [Int]) -> Int {
    let numElements = numArray.count
    var sum = 0
    for int in numArray {
        sum += numArray[int]
    }
    return sum / numElements
}

func mathArray(numArray: [Int], op: ([Int]) -> Int) -> Int {
    return op(numArray)
}


//Points
func addPoints(point1: (x:Int, y:Int), point2: (x:Int, y:Int)) -> (Int, Int) {
    return (point1.x + point2.x, point1.y + point2.y)
}

func subtractPoints(point1: (x:Int, y:Int), point2: (x:Int, y:Int)) -> (Int, Int) {
    return (point1.x - point2.x, point1.y - point2.y)
}

func addDictionaries (dictionary1: [String: Double], dictionary2: [String: Double]) ->  [String: Double]{
    var toReturn = [String: Double]()
    if dictionary1.keys.contains("x") && dictionary2.keys.contains("x") {
        toReturn["x"] = dictionary1["x"]! + dictionary2["x"]!
    }
    return toReturn
}

func subtractDictionaries (dictionary1: [String: Double], dictionary2: [String: Double]) ->  [String: Double] {
    var toReturn = [String: Double]()
    if dictionary1.keys.contains("y") && dictionary2.keys.contains("y") {
        toReturn["y"] = dictionary1["y"]! + dictionary2["y"]!
    }
    return toReturn
}
