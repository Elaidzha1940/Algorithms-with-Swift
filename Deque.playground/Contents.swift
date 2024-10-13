import UIKit

// Deque / Simple data structure - first the extremes and then the middle.

struct Deque<T> {
    private var container: [T] = []
    
    var size: Int { container.count }
    var isEmpty: Bool { container.isEmpty }
    
    var head: T? { container.first }
    var tail: T? { container.last }
    
    // mutating - add into struct
    mutating func addLast(_ t: T) {
        container.append(t)
    }
    
    mutating func addFirst(_ t: T) {
        container.insert(t, at: 0)
    }
    
    @discardableResult // a modifier that allows ignoring a function's return value.
    mutating func removeFirst() -> T? {
        guard !isEmpty else { return nil }
        return container.removeFirst()
    }
    
    @discardableResult // a modifier that allows ignoring a function's return value.
    mutating func removeLast() -> T? {
        guard !isEmpty else { return nil }
        return container.removeLast()
    }
}




