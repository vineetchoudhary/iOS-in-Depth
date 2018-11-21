import Foundation

extension String {
    public func isContain(string: String)-> Bool {
        if self.count < string.count || string.isEmpty{
            return false
        }
        
        var matchIndex: Int = 0
        for ch in self {
            if ch == string[string.index(string.startIndex, offsetBy: matchIndex)] {
                matchIndex += 1
            } else if (matchIndex > 0) {
                matchIndex = 0
                if ch == string[string.index(string.startIndex, offsetBy: matchIndex)] {
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
