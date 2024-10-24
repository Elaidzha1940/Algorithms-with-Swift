import UIKit

struct Stack<T> {
    private var container: [T] = [] // Private container
    var size: Int { container.count } // Size
    var isEmpty: Bool { container.isEmpty } // Empty
    var top: T? { container.last } // Top Element
}

