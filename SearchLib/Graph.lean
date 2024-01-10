namespace Graph

structure Edge (β: Type) where
  target: Nat
  weight: β
  deriving Repr

structure Vertex (α: Type) (β: Type) where
  payload: α
  adjacencyList: Array (Edge β)
  deriving Repr

structure Graph (α: Type) (β: Type) where
  vertices: Array (Vertex α β)
  deriving Repr

end Graph

def v₁: Graph.Vertex Nat Nat := { payload := 1, adjacencyList := #[] }
def v₂: Graph.Vertex Nat Nat := { payload := 2, adjacencyList := #[v₁] }
def v₃: Graph.Vertex Nat Nat := { payload := 3, adjacencyList := #[v₂] }


def chain_graph: Graph.Graph := { vertices := #[v₁, v₂, v₃] }

#eval chain_graph
