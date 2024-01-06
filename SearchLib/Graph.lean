namespace Graph

structure Edge (β: Type) where
  target: Nat
  weight: β

structure Vertex (α: Type) (β: Type) where
  payload: α
  adjacencyList: Array (Edge β)

structure Graph (α: Type) (β: Type) where
  vertices: Array (Vertex α β)

end Graph

def x := Graph.Edge.mk 1 2
#check x
