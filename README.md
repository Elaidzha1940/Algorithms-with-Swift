⌨️ Algorithms with Swift.
=====

Key Algorithms & Data Structures / Основные Алгоритмы и Структуры Данных:
-----

- Linked Lists / Связные списки
Efficient dynamic memory management, allowing flexible node insertion and deletion in a linear sequence.
Эффективное управление динамической памятью, позволяющее гибко вставлять и удалять узлы в линейной последовательности.

- Binary Search / Бинарный поиск
A fast and efficient algorithm to search within sorted collections with logarithmic time complexity.
Быстрый и эффективный алгоритм поиска в отсортированных коллекциях с логарифмической сложностью.

- Hash Table / Хеш-таблица
A data structure providing constant-time complexity for lookups, insertions, and deletions via hash functions.
Структура данных, обеспечивающая доступ, вставку и удаление за постоянное время благодаря хеш-функциям.

- Queue/Stack / Очередь/Стек
Core data structures used in sequential processing (queue) or Last-In-First-Out (LIFO) tasks (stack).
Основные структуры данных, используемые для последовательной обработки (очередь) или задач типа "последний пришел, первый ушел" (стек).

- DFS/BFS (Depth-First Search / Breadth-First Search) / Поиск в глубину / Поиск в ширину
Fundamental graph and tree traversal techniques used for searching and pathfinding.
Основные техники обхода графов и деревьев, используемые для поиска и нахождения путей.

- Sorting Algorithms / Алгоритмы сортировки
Explore various sorting techniques such as MergeSort, QuickSort, and InsertionSort, focusing on time and space complexity.
Изучите различные техники сортировки, такие как MergeSort, QuickSort и InsertionSort, с акцентом на временную и пространственную сложность.

- Heap/Hash / Куча/Хеш
Data structures used for efficient priority queue management and hashing-based operations.
Структуры данных, используемые для управления очередями с приоритетом и операций на основе хеширования.

- Two Pointers / Два указателя
A useful technique for solving problems involving arrays and strings with optimized time complexity.
Полезная техника для решения задач с массивами и строками с оптимизированной сложностью.

- Sliding Window / Скользящее окно
A dynamic range algorithm used for solving problems related to subarrays or substrings efficiently.
Алгоритм с динамическим диапазоном, используемый для эффективного решения задач, связанных с подмассивами или подстроками.

- Tree / Дерево
Study hierarchical structures like binary trees, AVL trees, and binary search trees (BSTs) for data organization and traversal.
Изучите иерархические структуры, такие как бинарные деревья, деревья AVL и деревья поиска (BST) для организации данных и обхода.

- Greedy Algorithms / Жадные алгоритмы
Solve optimization problems by making the locally optimal choice at each step, which often leads to globally optimal solutions.
Решайте задачи оптимизации, делая локально оптимальный выбор на каждом шаге, что часто приводит к глобально оптимальным решениям.

- Tree  
`````swift

import UIKit

// Node
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

- Queue

`````swift
struct Queue<T> {
    
}
`````

-----
-----

