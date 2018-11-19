import Foundation

func startStringStartEnd() {
    let input = readLine()!
    let inputWords = input.components(separatedBy: CharacterSet.whitespaces)
    
    var startWordDict = [Character: [String]]()
    var endWordDict = [Character: [String]]()
    
    for word in inputWords {
        let startKey = word.first!
        var startWords = startWordDict[startKey] ?? [String]()
        startWords.append(word)
        startWordDict[startKey] = startWords
        
        let endKey = word.last!
        var endWords = endWordDict[endKey] ?? [String]()
        endWords.append(word)
        endWordDict[endKey] = endWords
    }
    
    var count = 0
    for key in endWordDict.keys {
        count += (startWordDict[key]?.count ?? 0) - (endWordDict[key]?.count ?? 0)
    }
    
    print(count)
    print((count == -1 || count == 0) ? "Success" : "Failed")
}
