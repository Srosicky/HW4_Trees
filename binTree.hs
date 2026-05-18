-- COMP 3351
-- Homework 4: Types and Trees
-- Sophia Rosicky and Leyna Fougere



-- TypeClass to define binary tree
-- Derives (inherits) from Equality and Show TypeClasses (built-in)
data BinTree a = BinEmpty | BinNode a (BinTree a) (BinTree a) deriving (Eq, Show)