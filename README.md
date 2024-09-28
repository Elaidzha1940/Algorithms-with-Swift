⌨️ Algorithms with Swift.
======

🌐 EN:
The complexity of algorithms can be determined in several ways, depending on the specific characteristics of the algorithm and the problem it is solving.
------

1. Time Complexity: Time complexity refers to the amount of time required to solve a problem as the size of the input data increases. Algorithms with higher time complexity are generally considered more challenging to solve than those with lower time complexity.

2. Space Complexity: Space complexity refers to the amount of memory required to solve a problem as the size of the input data increases. Algorithms with higher space complexity may be more difficult to implement or optimize than those with lower space complexity.

3. Application Domain: The complexity of an algorithm can also depend on the domain for which it is designed. Some problems may have inherent complexity that cannot be reduced through algorithmic optimizations.

4. Input Characteristics: The characteristics of the input data can also affect the complexity of the algorithm. Some algorithms may be more difficult to implement or optimize for specific types of input data, such as large numbers, sparse data, or data with many repeated patterns.

5. Implementation Details: The implementation details of an algorithm, such as the choice of data structures or programming language, can also impact its complexity.

- Big O is a mathematical notation used to describe the time complexity of an algorithm, specifically how quickly an algorithm runs as the size of the input data increases.
It indicates the asymptotic upper bound of the algorithm's running time and allows us to understand how quickly the running time of an algorithm will grow as the size of the input data increases.
Big O is usually expressed in the form O(f(n)), where f(n) is a function that describes the number of operations the algorithm performs when processing n elements of input data. For example, if an algorithm has a time complexity of O(n), it means that the running time of the algorithm is proportional to the size of the input data.
Big O is used to compare and analyze different algorithms and helps in choosing the most optimal algorithm for solving a particular problem. It also allows us to evaluate how 
efficiently an algorithm can be optimized when working with large amounts of data.

------

☕️ Types of Algorithms
------

1. `Sorting`
- Examples: Bubble Sort, Quick Sort, Merge Sort.

2. `Searching`
- Examples: Linear Search, Binary Search.

3. `Graphs and Trees`
- Examples: Breadth-First Search (BFS), Depth-First Search (DFS), Dijkstra's Algorithm.

4. `Greedy Algorithms`
- Examples: Kruskal's Algorithm, Prim's Algorithm.

5. `Dynamic Programming`
- Examples: Knapsack Problem, Floyd-Warshall Algorithm.
  
6. `Divide and Conquer`
- Examples: Knapsack Problem, Floyd-Warshall Algorithm.

7. `Backtracking`
- Examples: Quick Sort, Merge Sort.

8. `Optimization Algorithms`
Examples: Genetic Algorithms, Gradient Descent.

------

🦢 Swift / Core Concepts
------
1. Sliding Window - A technique for solving problems involving subarrays or substrings, such as finding the maximum sum or the length of the longest unique substring.
2. Heap - A data structure for efficiently managing elements with priorities, commonly used in priority queues and shortest path algorithms.
3. HashMap/Hash Table - Provides fast data retrieval by key, ideal for lookup and matching problems.
4. Dynamic Programming - Solves problems by breaking them into subproblems and using their solutions to optimize the final outcome.
5. Graph Traversals (BFS/DFS) - Algorithms for searching and traversing graphs and trees, used in pathfinding and connectivity checking.
------

📢 Additional Concepts
------

1. Linked Lists - Linked lists are data structures consisting of nodes, where each node points to the next, enabling efficient insertion and deletion of elements.
2. Binary Search - An algorithm for finding an element in a sorted array in logarithmic time, making it ideal for large datasets.
3. Queue/Stack - Queues and stacks are data structures that manage the order of element processing. Queues operate on a FIFO basis, while stacks follow the LIFO principle.
4. Two Pointers - An optimization technique for solving problems in arrays and strings, using two pointers to speed up search and processing.
5. Greedy Problems - Algorithms that make the best choice at each step, aiming to reach a global optimum.
------

🌐 RU:
Сложность алгоритмов может определяться несколькими способами, в зависимости от конкретных характеристик алгоритма и задачи, которую он решает.
------

1. Временная сложность: Временная сложность алгоритма относится к количеству времени, необходимому для решения задачи при увеличении размера входных данных. Алгоритмы с более высокой временной сложностью обычно считаются более сложными в решении, чем те, у которых временная сложность ниже.

2. Пространственная сложность: Пространственная сложность алгоритма относится к объему памяти, необходимому для решения задачи при увеличении размера входных данных. Алгоритмы с более высокой пространственной сложностью могут быть более сложны в реализации или оптимизации, чем те, у которых пространственная сложность ниже.

3. Область применения: Сложность алгоритма также может зависеть от области применения, для которой он разработан. Некоторые задачи могут иметь врожденную сложность, которую нельзя снизить с помощью алгоритмических оптимизаций.

4. Характеристики входных данных: Характеристики входных данных могут также влиять на сложность алгоритма. Некоторые алгоритмы могут быть более сложны в реализации или оптимизации для определенных типов входных данных, таких как большие числа, разреженные данные или данные с множеством повторяющихся образцов.

5. Детали реализации: Детали реализации алгоритма, такие как выбор структур данных или языка программирования, также могут повлиять на его сложность.

------

- Big O - это математическая нотация, используемая для определения временной сложности алгоритма, то есть описания того, как быстро работает алгоритм при увеличении размера входных данных.
Она указывает на асимптотическую верхнюю границу времени выполнения алгоритма и позволяет определить, как быстро будет расти время выполнения алгоритма при увеличении размера входных данных.
Обычно Big O записывается в виде O(f(n)), где f(n) - функция, описывающая количество операций, которые выполняет алгоритм при обработке n элементов входных данных. Например, если алгоритм имеет временную сложность O(n), то это означает, что время выполнения алгоритма пропорционально размеру входных данных.
Big O используется для сравнения и анализа различных алгоритмов и помогает выбирать наиболее оптимальный алгоритм для решения конкретной задачи. Она также позволяет оценить, насколько эффективно можно оптимизировать алгоритм при работе с большими объемами данных.

------

☕️ Виды алгоритмов
------

1. `Сортировка` - Алгоритмы сортировки упорядочивают элементы в списке или массиве по возрастанию или убыванию.
- Примеры: Пузырьковая сортировка (Bubble Sort), Быстрая сортировка (Quick Sort), Сортировка слиянием (Merge Sort).

2. `Поиск` - Алгоритмы поиска помогают находить элемент в структуре данных.
- Примеры: Линейный поиск (Linear Search), Бинарный поиск (Binary Search).

3. `Графы и деревья` - Алгоритмы для работы с графами и деревьями, которые моделируют связи между объектами.
- Примеры: Обход в ширину (Breadth-First Search), Обход в глубину (Depth-First Search), Алгоритм Дейкстры (Dijkstra's Algorithm).
  
4. `Жадные алгоритмы` - Алгоритмы, которые делают наилучший выбор на каждом шаге в надежде найти глобальное оптимальное решение.
- Примеры: Алгоритм Крускала (Kruskal's Algorithm), Алгоритм Прима (Prim's Algorithm).

5. `Динамическое программирование` - Метод, используемый для решения задач, которые можно разбить на подзадачи, результаты которых используются для решения более крупных задач.
- Примеры: Задача о рюкзаке (Knapsack Problem), Алгоритм Флойда-Уоршелла (Floyd-Warshall Algorithm).

6. `Разделяй и властвуй` - Алгоритмы, которые решают задачу, разбивая её на меньшие подзадачи и объединяя решения.
- Примеры: Быстрая сортировка (Quick Sort), Сортировка слиянием (Merge Sort).
  
7. `Обратный отсчёт` - Метод поиска решений задач, где делаются попытки и откаты при неудачных выборах.
- Примеры: Задача о восьми ферзях (N-Queens Problem), Задача о раскраске графа (Graph Coloring Problem).
    
8. `Алгоритмы оптимизации` - Алгоритмы, которые находят наилучшее решение среди множества возможных.
- Примеры: Генетические алгоритмы (Genetic Algorithms), Алгоритм градиентного спуска (Gradient Descent).

------

🦢 Swift / Основные концепции
------

1. Скользящее окно (Sliding Window) - техника для решения задач с подмассивами или подстроками, таких как нахождение максимальной суммы или длины уникальной подстроки.
2. Куча (Heap) - структура данных для эффективного управления элементами с приоритетами, использующаяся в очередях с приоритетом и алгоритмах поиска кратчайшего пути.
3. Хэш-таблицы (HashMap/Hash Table) - обеспечивают быстрый доступ к данным по ключу, идеальны для задач поиска и сопоставления.
4. Динамическое программирование (Dynamic Programming) - решает задачи путем разбиения их на подзадачи и использования их решений для оптимизации.
5. Обходы графов (BFS/DFS) - алгоритмы для поиска и обхода графов и деревьев, используемые в задачах поиска путей и проверке связности.
------

📢 Дополнительные концепции
------

1. Linked Lists - Связанные списки — структуры данных, состоящие из узлов, где каждый узел указывает на следующий, что позволяет эффективно вставлять и удалять элементы.
2. Binary Search - Алгоритм для поиска элемента в отсортированном массиве за логарифмическое время, что делает его идеальным для больших наборов данных.
3. Queue/Stack - Очереди и стеки — структуры данных, управляющие порядком обработки элементов. Очередь работает по принципу FIFO, а стек — по принципу LIFO.
4. Two Pointers - Техника оптимизации для решения задач в массивах и строках, используя два указателя для ускорения поиска и обработки.
5. Greedy Problems - Алгоритмы, которые на каждом шаге делают наилучший выбор, стремясь достичь глобального оптимума.
------



------


