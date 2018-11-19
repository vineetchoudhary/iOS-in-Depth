import Foundation
import CommonCrypto

func MD5(string: String) -> String {
    let messageData = string.data(using:.utf8)!
    var digestData = Data(count: 1)
    
    _ = digestData.withUnsafeMutableBytes {digestBytes in
        messageData.withUnsafeBytes {messageBytes in
            CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
        }
    }
    var hash = String(digestData.base64EncodedString())
    hash = hash.replacingOccurrences(of: "+", with: "-")
    hash = hash.replacingOccurrences(of: "/", with: "_")
    return hash
}

func startTinyURL() {
    let longURL = readLine()!
    let shortURL = MD5(string: longURL)
    print(shortURL)
}

