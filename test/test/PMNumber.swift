//
//  PMNumber.swift
//  test
//
//  Created by Vineet Choudhary on 06/11/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import Foundation

extension Int {
    var isPrime: Bool {
        get {
            if self <= 1 {
                return false
            }
            
            if self <= 3 {
                return true
            }
            
            var naturalNumber = 2
            while naturalNumber * naturalNumber <= self {
                if self % naturalNumber == 0 {
                    return false
                }
                naturalNumber += 1
            }
            return true
        }
    }
    
    var sumOfDigit: Int {
        get {
            var sum = 0
            var num = self
            while num > 0 {
                sum += num % 10
                num = num / 10
            }
            return sum
        }
    }
}

func isPrime(num: Int)-> Bool {
    if num <= 1 {
        return false
    }
    
    if num <= 3 {
        return true
    }
    
    var index = 2
    while index * index <= num {
        if num % index == 0 {
            return false
        }
        index += 1
    }
    return true
    //return num > 1 && !(2..<num).contains { num % $0 == 0 }
}

func sumOfDigit(num: Int)-> Int {
    var sum = 0
    var _num = num
    while _num > 0 {
        sum += _num % 10
        _num = _num / 10
    }
    return sum
    //return String(num).compactMap{ Int(String($0)) }.reduce(0, +)
}

func startPM() {
    let inputString = readLine()!
    let inputNumbers = inputString.components(separatedBy: CharacterSet.whitespaces)
    let firstNum = Int(inputNumbers[0]) ?? 0
    let secondNum = Int(inputNumbers[1]) ?? 0
    
    var array = [String]()
    for num in firstNum...secondNum {
        if isPrime(num: num) && isPrime(num: sumOfDigit(num: num)) {
            array.append(String(num))
        }
    }
    print(array.joined(separator: " "))
}
