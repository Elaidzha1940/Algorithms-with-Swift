import UIKit

struct Stack<T> {
    private var container: [T] = [] // Private container
    var size: Int { container.count } // Size
    var isEmpty: Bool { container.isEmpty } // Empty
    var top: T? { container.last } // Top Element
    
    mutating func push(_ value : T) {
        self.container.append(value)
    }
    
    mutating func pop() -> T? {
        guard !self.isEmpty else {
            return nil
        }
        return self.container.removeLast()
    }
}

extension Stack {
    mutating func push(_ array: [T]) {
        self.container += array
    }
    
    mutating func removeAll() {
        container.removeAll()
    }
}

// Test
var stack = Stack<String>()
stack.pop()

stack.push("Autmn")
stack.push("Winter")
stack.push("Spring")
stack.push("Summer")

stack.pop()
stack.isEmpty
stack.top
stack.size


