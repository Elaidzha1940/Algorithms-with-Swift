import UIKit

// "Tree"
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
        children.forEach { treeNode in
            treeNode.forEach(visit: visit)
        }
    }
}
