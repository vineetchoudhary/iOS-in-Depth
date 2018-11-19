//
//  TwoStrings.swift
//  test
//
//  Created by Vineet Choudhary on 06/11/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import Foundation

func startTwoString() {
    let testCases = Int(readLine()!)!
    for _ in 1...testCases {
        
        let inputString = readLine()!
        let inputComponents = inputString.components(separatedBy: CharacterSet.whitespaces)
        let str1 = inputComponents[0]
        var str2 = inputComponents[1]
        
        for ch in str1 {
            if let index = str2.firstIndex(of: ch) {
                str2.remove(at: index)
            }
        }
        
        print(str2.isEmpty ? "YES" : "NO")
    }
}
