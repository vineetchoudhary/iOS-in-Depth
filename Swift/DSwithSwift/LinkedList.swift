import Foundation

public class LinkedListNode<T> {
    public var value: T
    public var next: LinkedListNode?
    public weak var previous: LinkedListNode?
    
    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T: Comparable> {
    public typealias Node = LinkedListNode<T>
    private var head: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else {
            return nil
        }
        
        while let next = head?.next {
            node = next
        }
        
        return node
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var desc = String()
        guard var node = head else {
            return desc
        }
        
        desc.append("'->\(node.value as? String ?? "")->")
        while let next = node.next {
            node = next
            desc.append("\(node.value as? String ?? "")->")
        }
        desc.append("Nil")
        return desc
    }
}

func startLL() {
    let ll = LinkedList<String>()
    ll.append(value: "Hello")
    ll.append(value: "There!!")
    print(ll)
}
