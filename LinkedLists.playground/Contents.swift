import UIKit


// Node / Узел связанного списка
class Node<T> {
    var value: T
    weak var next: Node?
    weak var previous: Node?
    
    init(_ value: T) {
        self.value = value 
    }
}

// Linked Lists / Связанный список

class LinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    var isEmpty: Bool { head == nil }
    var first: T? { head?.value }
    var last: T? { tail?.value }
}
