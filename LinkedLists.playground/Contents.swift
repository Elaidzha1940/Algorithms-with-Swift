import UIKit

// Linked Lists

class Node<T> {
    var value: T
    weak var next: Node?
    weak var previous: Node?
    
    init(_ value: T) {
        self.value = value 
    }
}
