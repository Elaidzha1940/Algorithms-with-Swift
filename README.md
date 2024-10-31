⌨️ Algorithms with Swift.
=====

### Key Algorithms & Data Structures / Основные Алгоритмы и Структуры Данных

### 1. Основные структуры данных

- Linked Lists (Связные списки)
     - Примеры: односвязные и двусвязные списки. Эффективное управление динамической памятью, позволяющее гибко вставлять и удалять узлы в линейной последовательности.
     - Examples: singly linked and doubly linked lists. Efficient dynamic memory management, allowing flexible node insertion and deletion in a linear sequence.

- Hash Table (Хеш-таблица)
     - Структура данных, обеспечивающая быстрый доступ, вставку и удаление с использованием хеш-функций.
     - A data structure providing constant-time complexity for lookups, insertions, and deletions via hash functions.

- Heap (Куча)
     - Структура данных для управления приоритетными очередями и решения задач, таких как нахождение k наибольших элементов.
     - A data structure used for efficient priority queue management and finding the k-largest or k-smallest elements.

- Tree (Дерево)
     - Изучение бинарных деревьев, деревьев поиска и деревьев AVL для организации данных.
     - Study binary trees, AVL trees, and binary search trees (BSTs) for data organization and traversal.

- Stack (Стек)
     - Основная структура данных для задач типа "последний пришел, первый ушел".
     - Core data structure used for Last-In-First-Out (LIFO) tasks.

- Queue (Очередь)
     - Основная структура данных для последовательной обработки.
     - Core data structure used in sequential processing.

### 2. Алгоритмы поиска и обхода

- DFS/BFS (Depth-First Search / Breadth-First Search) (Поиск в глубину / Поиск в ширину)
     - Основные техники обхода графов и деревьев для поиска и нахождения путей.
     - Fundamental graph and tree traversal techniques used for searching and pathfinding.

- Binary Search (Бинарный поиск)
     - Быстрый алгоритм поиска в отсортированных коллекциях с логарифмической сложностью.
     - A fast and efficient algorithm to search within sorted collections with logarithmic time complexity.

### 3. Алгоритмы сортировки

- Sorting Algorithms (Алгоритмы сортировки)
     - Алгоритмы сортировки, такие как QuickSort и MergeSort, с фокусом на временную сложность.
     - Explore various sorting techniques such as QuickSort and MergeSort, focusing on time and space complexity.

### 4. Алгоритмы оптимизации

- Dynamic Programming (Динамическое программирование)
     - Принципы оптимизации задач с перекрывающимися подзадачами.
     - Principles of optimizing problems with overlapping subproblems.

- Greedy Algorithms (Жадные алгоритмы)
     - Решение задач оптимизации, где на каждом шаге выбирается локально оптимальное решение.
     - Solve optimization problems by making locally optimal choices at each step to potentially find global solutions.

- Divide and Conquer (Разделяй и властвуй)
     - Пример: QuickSort, MergeSort. Принцип заключается в разделении задачи на подзадачи для упрощения решения.
     - Example: QuickSort, MergeSort. The principle involves breaking a problem into smaller subproblems for simpler solutions.

### 5. Алгоритмы на графах

- Graph Algorithms (Алгоритмы работы с графами)
     - Пример: Алгоритмы Дейкстры, Краскала, Прима. Решение задач, связанных с кратчайшими путями, минимальным остовным деревом и цикличностью графов.
     - Example: Dijkstra's, Kruskal's, Prim's algorithms. Solve problems like shortest path, minimum spanning tree, and graph cycles.

- Union-Find (Алгоритм объединения и нахождения)
     - Пример: работа с непересекающимися множествами в графах. Эффективное управление компонентами графов.
     - Example: disjoint-set data structure for handling graph components efficiently.

### 6. Техники для задач на массивы и строки

- Two Pointers (Два указателя)
     - Полезная техника для решения задач с массивами и строками, таких как задача о двух суммах.
     - A useful technique for solving problems involving arrays and strings, like finding pairs that meet specific conditions.

- Sliding Window (Скользящее окно)
     - Алгоритм с динамическим диапазоном для решения задач с подмассивами или подстроками.
     - A dynamic range algorithm used for solving problems related to subarrays or substrings efficiently.
-----

Big O Notation
-----

- Big O Notation - это способ оценки зависимости количества операций, выполняемых процессором, от числа элементов данных.
     - O(n) обозначает, что количество операций линейно зависит от количества элементов данных.
     - O - количество операций, которое потребуется для выполнения алгоритма.
     - n — количество элементов, с которыми работает алгоритм.
 
- Big O Notation is a way to measure how the number of operations performed by the processor depends on the number of data elements.
     - O(n) means that the number of operations grows linearly with the number of data elements.
     - O represents the total number of operations required to complete the algorithm.
     - n is the number of elements the algorithm processes.
 
`````swift
import UIKit

// O(1) - Единичная (константная) сложность
func getValueFor(index: Int, in array: [Int]) -> Int? {
    guard index < array.count else { return nil }
    
    return array[index]
}

getValueFor(index: 2, in: [1,2,3,4,5])

// O(n) - Линейная сложность
func sum(array: [Int]) -> Int {
    var sum = 0
    array.forEach { sum += $0 }
    return sum
}

// O(2*n)
func sum(array: [Int]) -> (Int, Int) {
    var sum = 0
    var mult = 1
    array.forEach { sum += $0 }
    
    array.forEach { num in
        mult *= num
    }
    
    return (sum, mult)
}

// O(n)
func multiTab(array: [Int]) {
    for num1 in array {
        for num2 in array {
            print("\(num1) * \(num2) = \(num1 * num2)")
        }
    }
}
`````

-----

- Tree (Дерево)

`````swift

import UIKit

// Node (Узел)
class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    
    init(value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
}

extension TreeNode {
    func forEach(visit: (TreeNode) -> ()) {
        visit(self)
        children.forEach { $0.forEach(visit: visit) }
    }
}

struct Product {
    let title: String
    let category: String
    let subCategory: String
}

let productsTree = TreeNode(value: "Catalog")
let shoesTree = TreeNode(value: "Shoes")
let womenShoes = TreeNode(value: "Women Shoes")
let menShoes = TreeNode(value: "Men Shoes")
let sneakers = TreeNode(value: "Sneakers")
let oxfords = TreeNode(value: "Oxfords")
let slippers = TreeNode(value: "Slippers")
let crocs = TreeNode(value: "Crocs")

productsTree.add(shoesTree)
shoesTree.add(womenShoes)
shoesTree.add(menShoes)
womenShoes.add(slippers)
womenShoes.add(crocs)
menShoes.add(sneakers)
menShoes.add(oxfords)

productsTree.forEach { node in
    print(node.value)
}
`````

- Queue (Очередь)

`````swift
import UIKit

// Queue / Simple data structure - работает по принципу FIFO

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

// Test
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

let array = queue.dequeue(number: 4)
print(array)
queue.size
queue.head
queue.tail

var queue1 = Queue(["Kim", "Mom", "Aunt"])
queue1.size

`````

- Deque (Двойная очередь)

`````swift
import UIKit

// Deque / Simple data structure - Cначала крайние и после средняя

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

var deque = Deque<String>()
deque.addFirst("Mac")
deque.addLast("Macbook")
deque.addFirst("iMac")
deque.addLast("iPad")

deque.removeLast()
deque.removeLast()
deque.removeLast()
deque.removeLast()
`````

- Linked Lists (Связные списки)

`````swift
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
    
    // Удаление из связанного списка по индексу / [1 <-> 8 <-> 3 <-> 5 <-> 4]
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
}

// [1 <-> 8 <-> 3 <-> 5 <-> 4]
extension LinkedList: CustomStringConvertible {
    var description: String {
        var text = "["
        var currentNode = head
        while currentNode != nil {
            text += "\(currentNode!.value)"
            currentNode = currentNode?.next
            if currentNode != nil { text += " <-> " }
        }
        text += "]"
        return text
    }
}

// Test
var fishes = LinkedList<String>()
fishes.first
fishes.last
fishes.isEmpty
print(fishes)
fishes.append("trout")
print(fishes)
fishes.append("salmon")
fishes.append("tuna")
fishes.append("sea bass")
fishes.append("cod")
print(fishes)
fishes.last

fishes.value(at: 3)
fishes.remove(at: 1)
print(fishes)
`````

- Stack (Стек)

`````swift
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

`````
-----



