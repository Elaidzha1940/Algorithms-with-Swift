//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//    }
//}

// - Queue (Очередь)

import UIKit

// Queue / FIFO

struct Queue<T> {
    private var container: [T] = []
    
    var size: Int { container.count }
    var isEmpty: Bool { container.isEmpty }
    
    var head: T? { container.first }
    var tail: T? { container.last }
    
    // mutating - add into struct
    mutating func enqueue(_ t: T) {
        container.append(t)
    }
    
    @discardableResult // a modifier that allows ignoring a function's return value.
    mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        return container.removeFirst()
    }
}

extension Queue {
    init(_ array: [T]) {
        self.container = array
    }
    
    mutating func enqueue(_ array: [T]) {
        self.container += array
    }
    
    mutating func dequeue(number: Int) -> [T] {
        guard number < container.count else {
            let array = container
            container.removeAll()
            return array
        }
        
        var array = [T]()
        for _ in 0..<number {
            array.append(container.removeFirst())
        }
        return array
    }
}

var queue = Queue<String>()
queue.enqueue("Eli")
queue.enqueue("Elijah")
queue.size
queue.isEmpty
queue.head
queue.tail
queue.enqueue(["🫠", "🥹", "😇", "😇"])
queue.size
queue.head
queue.tail

