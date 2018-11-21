import Foundation

func BinarySearch<T: Comparable>(array: [T], item: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        let midIndex = range.lowerBound + ((range.upperBound - range.lowerBound) / 2)
        if array[midIndex] < item {
            return BinarySearch(array: array, item: item, range: (midIndex + 1) ..< range.upperBound)
        } else if array[midIndex] > item {
            return BinarySearch(array: array, item: item, range: range.lowerBound ..< midIndex)
        } else {
            return midIndex
        }
    }
}

func startBinarySearch() {
    let date = Date()
    print(Date().timeIntervalSince(date))
    let array = Array(1...9999999)
    print(Date().timeIntervalSince(date))
    print(BinarySearch(array: array, item: 975689, range: 0..<array.count) ?? -1)
    print(Date().timeIntervalSince(date))
}
