/*
 Akash and Vishal are quite fond of travelling. They mostly travel by railways. They were travelling in a train one day and they got interested in the seating arrangement of their compartment. The compartment looked something like
 
 
 So they got interested to know the seat number facing them and the seat type facing them. The seats are denoted as follows :
 
 Window Seat : WS
 Middle Seat : MS
 Aisle Seat : AS
 
 You will be given a seat number, find out the seat number facing you and the seat type, i.e. WS, MS or AS.
 
 INPUT
 First line of input will consist of a single integer T denoting number of test-cases. Each test-case consists of a single integer N denoting the seat-number.
 
 OUTPUT
 For each test case, print the facing seat-number and the seat-type, separated by a single space in a new line.
 
 CONSTRAINTS
 1<=T<=105
 1<=N<=108
 SAMPLE INPUT
 2
 18
 40
 SAMPLE OUTPUT
 19 WS
 45 AS
 */
import Foundation

func printFrontSeat(input: Int, seatIndex: Int, seats: [Int], type: String) {
    if (seatIndex % 2 == 0) {
        let diff = seats[seatIndex] - seats[seatIndex + 1]
        print("\(input - diff) \(type)")
    } else {
        let diff = seats[seatIndex] - seats[seatIndex - 1]
        print("\(input - diff) \(type)")
    }
}

func startSeatingArrangement() {
    let windowSeat = [1, 12, 6, 7]
    let middleSeat = [2, 11, 5, 8]
    let aisleSeat = [3, 10, 4, 9]
    
    let input = Int(readLine()!)!
    var inputSeats = [Int]()
    for _ in 1...input {
        inputSeats.append(Int(readLine()!)!)
    }
    
    for inputSeat in inputSeats {
        var seatOrder = (inputSeat % 12)
        seatOrder = (seatOrder == 0) ? 12 : seatOrder
        
        if let index = windowSeat.firstIndex(of: seatOrder) {
            printFrontSeat(input: inputSeat, seatIndex: index, seats: windowSeat, type: "WS")
        } else if let index = middleSeat.firstIndex(of: seatOrder) {
            printFrontSeat(input: inputSeat, seatIndex: index, seats: middleSeat, type: "MS")
        } else if let index = aisleSeat.firstIndex(of: seatOrder) {
            printFrontSeat(input: inputSeat, seatIndex: index, seats: aisleSeat, type: "AS")
        }
    }
}
