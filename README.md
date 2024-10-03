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

###2. Алгоритмы поиска и обхода

- DFS/BFS (Depth-First Search / Breadth-First Search) (Поиск в глубину / Поиск в ширину)
     - Основные техники обхода графов и деревьев для поиска и нахождения путей.
     - Fundamental graph and tree traversal techniques used for searching and pathfinding.

- Binary Search (Бинарный поиск)
     - Быстрый алгоритм поиска в отсортированных коллекциях с логарифмической сложностью.
     - A fast and efficient algorithm to search within sorted collections with logarithmic time complexity.

###3. Алгоритмы сортировки

- Sorting Algorithms (Алгоритмы сортировки)
     - Алгоритмы сортировки, такие как QuickSort и MergeSort, с фокусом на временную сложность.
     - Explore various sorting techniques such as QuickSort and MergeSort, focusing on time and space complexity.

###4. Алгоритмы оптимизации

- Dynamic Programming (Динамическое программирование)
     - Принципы оптимизации задач с перекрывающимися подзадачами.
     - Principles of optimizing problems with overlapping subproblems.

- Greedy Algorithms (Жадные алгоритмы)
     - Решение задач оптимизации, где на каждом шаге выбирается локально оптимальное решение.
     - Solve optimization problems by making locally optimal choices at each step to potentially find global solutions.

- Divide and Conquer (Разделяй и властвуй)
     - Пример: QuickSort, MergeSort. Принцип заключается в разделении задачи на подзадачи для упрощения решения.
     - Example: QuickSort, MergeSort. The principle involves breaking a problem into smaller subproblems for simpler solutions.

###5. Алгоритмы на графах

- Graph Algorithms (Алгоритмы работы с графами)
     - Пример: Алгоритмы Дейкстры, Краскала, Прима. Решение задач, связанных с кратчайшими путями, минимальным остовным деревом и цикличностью графов.
     - Example: Dijkstra's, Kruskal's, Prim's algorithms. Solve problems like shortest path, minimum spanning tree, and graph cycles.

- Union-Find (Алгоритм объединения и нахождения)
     - Пример: работа с непересекающимися множествами в графах. Эффективное управление компонентами графов.
     - Example: disjoint-set data structure for handling graph components efficiently.

###6. Техники для задач на массивы и строки

- Two Pointers (Два указателя)
     - Полезная техника для решения задач с массивами и строками, таких как задача о двух суммах.
     - A useful technique for solving problems involving arrays and strings, like finding pairs that meet specific conditions.

- Sliding Window (Скользящее окно)
     - Алгоритм с динамическим диапазоном для решения задач с подмассивами или подстроками.
     - A dynamic range algorithm used for solving problems related to subarrays or substrings efficiently.
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

