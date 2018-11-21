/*
 Given two strings, a and b , that may or may not be of the same length, determine the minimum number of character deletions required to make a and b anagrams. Any characters can be deleted from either of the strings.
 
 Input :
 
 test cases,t
 two strings a and b, for each test case
 Output:
 
 Desired O/p
 
 Constraints :
 
 string lengths<=10000
 
 Note :
 
 Anagram of a word is formed by rearranging the letters of the word.
 
 For e.g. -> For the word RAM - MAR,ARM,AMR,RMA etc. are few anagrams.
 
 SAMPLE INPUT
 1
 cde
 abc
 SAMPLE OUTPUT
 4
 */

import Foundation

func startAnagrams() {
    let testCases = Int(readLine()!)!
    for _ in 1...testCases {
        
        let str1 = readLine()!
        let str2 = readLine()!
        
        var str1Count = [String: Int]()
        var str2Count = [String: Int]()
        
        var remove = 0
        var keySet = Set<String>()
        
        for ch in str1 {
            let key = String(ch)
            keySet.insert(key)
            str1Count[key] = ((str1Count[key] ?? 0) + 1)
        }
        
        for ch in str2 {
            let key = String(ch)
            keySet.insert(key)
            str2Count[key] = ((str2Count[key] ?? 0) + 1)
        }
        
        
        for key in keySet {
            let count = (str1Count[key] ?? 0) - (str2Count[key] ?? 0)
            remove += (count > 0 ? count : -count)
        }
        
        print(remove)
    }
}
