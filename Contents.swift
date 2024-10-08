// Algorithms with Swift 

import UIKit

// Queue

struct Queue<T> {
    
}

// "Tree"

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

// Queue / FIFO

struct Queue<T> {
    private var container: [T] = []
    
    var size: Int { container.count }
    var isEmpty: Bool { container.isEmpty }
    
    var head: T? { container.first }
    var tail: t? { container.last }
    
    // mutating - add into struct
    mutating func enqueue(_ t: T) {
        container.append(t)
    }
    
    mutating func dequeue() -> T {
        guard !isEmpty else { return nil }
    }
}


