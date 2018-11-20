//
//  ArrayPairSum.swift
//  test
//
//  Created by Vineet Choudhary on 20/11/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import Foundation

func subArray<T: Numeric & Comparable>(inputElements: [T], requiredSum: T)-> Bool {
    var leftPointer = 0
    var rightPointer = inputElements.count - 1
    
    var inputElements = inputElements
    inputElements.sort()
    
    while leftPointer < rightPointer {
        let sum = inputElements[leftPointer] + inputElements[rightPointer]
        if sum == requiredSum {
            return true
        }
        else if sum < requiredSum {
            leftPointer += 1
        }
        else {
            rightPointer -= 1
        }
    }
    return false
}

func startArryPairSum() {
    let inputElements = [1, 4, 46, 6, 10, 8]
    print(subArray(inputElements: inputElements, requiredSum: 3))
    
    let inputElementsDouble = [1.2, 4.3, 46.4, 6.5, 10.6, 8.7]
    print(subArray(inputElements: inputElementsDouble, requiredSum: 5.5))
}
