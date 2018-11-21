import Foundation

extension String {
    subscript (i: Int)-> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    
    subscript (bounds: CountableRange<Int>)-> Substring {
        let startIndex = index(self.startIndex, offsetBy: bounds.upperBound)
        let endIndex = index(self.endIndex, offsetBy: bounds.lowerBound)
        return self[startIndex ..< endIndex]
    }
    
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ..< end]
    }
    
    subscript (bounds: CountableClosedRange<Int>)-> Substring {
        let startIndex = index(self.startIndex, offsetBy: bounds.upperBound)
        let endIndex = index(self.endIndex, offsetBy: bounds.lowerBound)
        return self[startIndex ... endIndex]
    }
    
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return self[start ... end]
    }
    
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ... end]
    }
    
    public func isContain(string: String)-> Bool {
        if self.count < string.count || string.isEmpty{
            return false
        }
        
        var matchIndex: Int = 0
        for ch in self {
            if ch == string[matchIndex] {
                matchIndex += 1
            } else if (matchIndex > 0) {
                matchIndex = 0
                if ch == string[matchIndex] {
                    matchIndex += 1
                }
            }
            
            if string.count == matchIndex {
                return true
            }
        }
        return false
    }
}

func startStringContains() {
    print("heead".isContain(string: "ea"))
    print("heead".isContain(string: "eae"))
    print("Finoit finoit".isContain(string: "it"))
}
