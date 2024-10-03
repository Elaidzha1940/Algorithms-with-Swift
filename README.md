⌨️ Algorithms with Swift.
=====

Key Algorithms & Data Structures / Основные Алгоритмы и Структуры Данных:
-----

- Linked Lists / Связные списки
    Примеры: односвязные и двусвязные списки.
Эффективное управление динамической памятью, позволяющее гибко вставлять и удалять узлы в линейной последовательности.
Example: singly linked and doubly linked lists.
Efficient dynamic memory management, allowing flexible node insertion and deletion in a linear sequence.

- Binary Search / Бинарный поиск
Быстрый алгоритм поиска в отсортированных коллекциях с логарифмической сложностью.
A fast and efficient algorithm to search within sorted collections with logarithmic time complexity.

- Hash Table / Хеш-таблица
Структура данных, обеспечивающая быстрый доступ, вставку и удаление с использованием хеш-функций.
A data structure providing constant-time complexity for lookups, insertions, and deletions via hash functions.

- Queue/Stack / Очередь/Стек
Основные структуры данных для последовательной обработки (очередь) или задач типа "последний пришел, первый ушел" (стек).
Core data structures used in sequential processing (queue) or Last-In-First-Out (LIFO) tasks (stack).

- DFS/BFS (Depth-First Search / Breadth-First Search) / Поиск в глубину / Поиск в ширину
Основные техники обхода графов и деревьев для поиска и нахождения путей.
Fundamental graph and tree traversal techniques used for searching and pathfinding.

- Sorting Algorithms / Алгоритмы сортировки
Алгоритмы сортировки, такие как QuickSort и MergeSort, с фокусом на временную сложность.
Explore various sorting techniques such as QuickSort and MergeSort, focusing on time and space complexity.

- Heap / Куча
Структура данных для управления приоритетными очередями и решения задач, таких как нахождение k наибольших элементов.
A data structure used for efficient priority queue management and finding the k-largest or k-smallest elements.

- Two Pointers / Два указателя
Полезная техника для решения задач с массивами и строками, таких как задача о двух суммах.
A useful technique for solving problems involving arrays and strings, like finding pairs that meet specific conditions.

- Sliding Window / Скользящее окно
Алгоритм с динамическим диапазоном для решения задач с подмассивами или подстроками.
A dynamic range algorithm used for solving problems related to subarrays or substrings efficiently.

- Tree / Дерево
Изучение бинарных деревьев, деревьев поиска и деревьев AVL для организации данных.
Study binary trees, AVL trees, and binary search trees (BSTs) for data organization and traversal.

- Greedy Algorithms / Жадные алгоритмы
Решение задач оптимизации, где на каждом шаге выбирается локально оптимальное решение.
Solve optimization problems by making locally optimal choices at each step to potentially find global solutions.

-----

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

