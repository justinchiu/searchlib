universe v

inductive DiGraph (α: Type v) where
  | leaf (value: α)
  | node (value: α) (children: Array (DiGraph α))
  deriving Repr

def v₃: DiGraph Nat := DiGraph.leaf 3
def v₂: DiGraph Nat := DiGraph.node 2 #[v₃]
def v₁: DiGraph Nat := DiGraph.node 1 #[v₂]
--#eval v₁
