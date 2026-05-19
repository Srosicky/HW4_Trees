-- COMP 3351
-- Homework 4: Types and Trees
-- Sophia Rosicky and Leyna Fougere



-- TypeClass to define binary tree
-- Derives (inherits) from Equality and Show TypeClasses (built-in)
-- This says: a binary tree 
data BinTree a = BinEmpty | BinNode a (BinTree a) (BinTree a) deriving (Eq, Show)


-- PART ONE: Preliminary Binary Tree Functionality

-- TODO: insert
-- takes in a BinTree and value, then produces a new BinTree that contains the value
insert :: BinTree -> a -> BinTree
insert BinTree a = 

-- TODO: search 
-- takes in a BinTree and value, then returns True if the value is in the tree or False otherwise

-- TODO: treeMap
-- takes in a function (f :: a -> b) and a BinTree, then returns a new BinTree where function was applied to each node

-- TODO: inOrder
-- takes in function (f :: a -> b -> b), and accumulator value, and a BinTree and folds using the function

-- TODO: preOrder

-- TODO: postOrder

-- PART TWO: 