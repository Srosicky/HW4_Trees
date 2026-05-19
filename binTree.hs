-- COMP 3351
-- Homework 4: Types and Trees
-- Sophia Rosicky and Leyna Fougere



-- PART ONE: Preliminary Binary Tree Functionality

-- TypeClass to define binary tree
data BinTree a = BinEmpty | BinNode a (BinTree a) (BinTree a) deriving (Eq, Show)


-- Insert Function
insert :: (Ord a) => BinTree a -> a -> BinTree a
insert BinEmpty x = BinNode x BinEmpty BinEmpty
insert (BinNode x leftNode rightNode) n =
    if n == x then BinNode n leftNode rightNode
    else if n < x then BinNode x (insert leftNode n) rightNode
    else BinNode x leftNode (insert rightNode n)

-- Search Function 
search :: (Ord a) => BinTree a -> a -> Bool                                
search BinEmpty x = False                                   
search (BinNode x leftNode rightNode) n =
    if n == x then True
    else if n < x then search leftNode n
    else search rightNode n


-- Mapping Function
-- takes in a function (f :: a -> b) and a BinTree, then returns a new BinTree where function was applied to each node
treeMap :: (a -> b) -> BinTree a -> BinTree b
treeMap f BinEmpty = BinEmpty
treeMap f (BinNode x leftNode rightNode) = BinNode (f x) (map f leftNode) (map f rightNode)



-- inOrder Function
-- takes in function (f :: a -> b -> b), and accumulator value, and a BinTree and folds using the function

-- preOrder Function

-- postOrder Function

-- PART TWO: 