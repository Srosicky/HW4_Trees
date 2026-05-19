-- COMP 3351
-- Homework 4: Types and Trees
-- Sophia Rosicky and Leyna Fougere



-- PART ONE: Preliminary Binary Tree Functionality

-- TypeClass to define binary tree
-- Derives (inherits) from Equality and Show TypeClasses (built-in)
-- This says: a binary tree 
data BinTree a = BinEmpty | BinNode a (BinTree a) (BinTree a) deriving (Eq, Show)


-- Insert Function
insert :: BinTree a -> a -> BinTree a                           -- Type signiture
insert BinEmpty x = BinNode x (BinEmpty) (BinEmpty)             -- Empty tree case
insert (BinNode x leftNode rightNode) n =                       
    if n == x then BinNodeode n leftNode rightNode
    else if n < x then BinNode x (insert leftNode n) rightNode
    else n > x then BinNode x leftNode (insert rightNode n)

-- Search Function 
search :: BinTree a -> a -> Bool                                -- Type signiture
search BinEmpty x = False                                       -- Empty tree case
search (BinNode x leftNode rightNode) n =
    if n == x then True
    else if n < x then search leftNode n
    else search rightNode n


-- Mapping Function
-- takes in a function (f :: a -> b) and a BinTree, then returns a new BinTree where function was applied to each node

-- inOrder Function
-- takes in function (f :: a -> b -> b), and accumulator value, and a BinTree and folds using the function

-- preOrder Function

-- postOrder Function

-- PART TWO: 