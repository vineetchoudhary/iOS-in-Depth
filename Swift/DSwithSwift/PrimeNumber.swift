/*
 You are given an integer N. You need to print the series of all prime numbers till N.
 
 Input Format
 
 The first and only line of the input contains a single integer N denoting the number till where you need to find the series of prime number.
 
 Output Format
 
 Print the desired output in single line separated by spaces.
 
 Constraints
 
 1<=N<=1000
 */

import Foundation

/*
 A prime number (or a prime) is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers.
 A natural number greater than 1 that is not prime is called a composite number.
 For example, 5 is prime because the only ways of writing it as a product, 1 × 5 or 5 × 1, involve 5 itself. However, 6 is composite because it is the product of two numbers (2 × 3) that are both smaller than 6.
 */

func CheckIsPrime(num: Int)-> Bool {
    if num <= 1 {
        return false
    }
    
    if num <= 3 {
        return true
    }
    
    var compositeNum = 2
    while compositeNum * compositeNum <= num {
        if num % compositeNum == 0 {
            return false
        }
        compositeNum += 1
    }
    return true
}

func StartPrimeNumber() {
    let input = Int(readLine()!) ?? 0
    var primeNumbers = [String]()
    for num in 2...input {
        if CheckIsPrime(num: num) {
            primeNumbers.append(String(num))
        }
    }
    print(primeNumbers.joined(separator: " "))
}
