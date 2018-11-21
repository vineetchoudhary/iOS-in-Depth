import Foundation

struct Stack<T> {
    private var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(element: T) {
        array.append(element)
    }
    
    public mutating func pop()-> T? {
        if isEmpty {
            return nil
        }
        
        return array.removeLast() //array.remove(at: (array.count - 1))
    }
    
    public func peek()-> T? {
        if isEmpty {
            return nil
        }
        return array.last //array[(array.count - 1)]
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return array.description
    }
}

func startStack()
{
    var stack = Stack<String>()
    stack.push(element: "Hello")
    stack.push(element: "There!!!")
    stack.push(element: "How are you?")
    print(stack)
    print("POP - \(stack.pop() ?? "Stack is Empty")")
    print(stack)
    print("POP - \(stack.pop() ?? "Stack is Empty")")
    print(stack)
    print("Peek - \(stack.peek() ?? "Stack is Empty")")
    print(stack)
    print("POP - \(stack.pop() ?? "Stack is Empty")")
    print(stack)
}
