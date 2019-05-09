class Tree:
    def __init__(self, data):
        self.left = None
        self.right = None
        self.data = data
        
    def generate_tree(self, nodes, tree):

        if nodes.left is not None:
            tree[nodes.data] = [nodes.left.data]
            tree = self.generate_tree(nodes.left, tree)
        if nodes.right is not None:
            tree[nodes.data] =  tree[nodes.data] + [nodes.right.data]
            tree = self.generate_tree(nodes.right, tree)
        return tree
    
    def get_tree(self):
        tree = self
        root = self.data
        return self.generate_tree(tree, {'root': root})
