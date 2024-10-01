⌨️ Algorithms with Swift.
=====

Algorithms
-----

linked lists
binary search
hash table
queue/stack
dfs/bfs
sort
heap/hash
two pointers
sliding window
tree
greedy problems
-----

- Tree  
`````swift
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


-----


-----
