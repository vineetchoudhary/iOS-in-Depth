import Foundation

enum BinaryTree<T: Comparable> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
}

extension BinaryTree: CustomStringConvertible {
    var description: String {
        switch self {
        case let .node(left, value, right):
            return "value: \(value),\n\tleft = [\(left.description)],\n\tright = [\(right.description)]"
        case .empty:
            return ""
        }
    }
    
    var count: Int {
        switch self {
        case let .node(left, _, right):
            return left.count + 1 + right.count
        case .empty:
            return 0
        }
    }
    
    private func newTreeWithInsertedValue(newValue: T)-> BinaryTree {
        switch self {
        case .empty:
            return .node(.empty, newValue, .empty)
        case let .node(left, value, right):
            if newValue < value {
                return .node(left.newTreeWithInsertedValue(newValue: newValue), value, right)
            } else {
                return .node(left, value, right.newTreeWithInsertedValue(newValue: newValue))
            }
        }
    }
    
    public func search(searchValue: T)-> BinaryTree? {
        switch self {
        case .empty:
            return nil
        case let .node(left, value, right):
            if value > searchValue {
                return left.search(searchValue: searchValue)
            } else if value < searchValue {
                return right.search(searchValue: searchValue)
            } else {
                return self
            }
        }
    }
    
    mutating func insert(newValue: T) {
        self = newTreeWithInsertedValue(newValue: newValue)
    }
}

func startBT()
{
    var binaryTree: BinaryTree<Int> = .empty
    binaryTree.insert(newValue: 4)
    binaryTree.insert(newValue: 3)
    binaryTree.insert(newValue: 5)
    binaryTree.insert(newValue: 9)
    binaryTree.insert(newValue: 1)
    binaryTree.insert(newValue: 6)
    print(binaryTree)
    
    let searchTree = binaryTree.search(searchValue: 5)
    print(searchTree)

}
