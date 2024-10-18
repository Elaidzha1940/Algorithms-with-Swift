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

extension LinkedList {
 // Add to end of list / Добавление в конец списка
    func append(_ value: T) {
        let newNode = Node(value) // Оборачиваем новое значение в узел
        
        if let tail { // Если список не пустой
            newNode.previous = tail
            tail.next = newNode
        } else { // Если список пустой
            head = newNode
        }
        // Теперь хвост новый узел
        tail = newNode
    }
}
