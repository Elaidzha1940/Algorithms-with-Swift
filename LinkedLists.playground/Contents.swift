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
    
    // Получение узла по индексу (по порядковому номеру)
    private func nodeBy(_ index: Int) -> Node<T>? {
        guard index >= 0 else { return nil }
        var currentNode = head
        var i = index
        
        while currentNode != nil {
            if i == 0 { return currentNode }
            i -= 1
            currentNode = currentNode?.next
        }
        return nil
    }
    
    // Получение значения по индексу
    func value(at index: Int) -> T? {
        let node = nodeBy(index)
        return node?.value
    }
    
    // Удаление из связанного списка по индексу / [1 <-> 8 <->3 <-> 5 <-> 4]
    @discardableResult // a modifier that allows ignoring a function's return value.
    func remove(at index: Int) -> T? {
        guard let removedNode = nodeBy(index) else { return nil }
        let previous = removedNode.previous
        let next = removedNode.next
        
        if let previous {
            previous.next = next
        } else {
            head = next
        }
        
        if let next {
            next.previous = previous
        } else {
            tail = previous
        }
        
        removedNode.next = nil
        removedNode.previous = nil
        
        return removedNode.value
    }
    
    // [1 <-> 8 <->3 <-> 5 <-> 4]
}
