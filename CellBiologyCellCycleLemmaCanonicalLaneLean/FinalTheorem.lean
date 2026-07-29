import HautevilleHouse.CellBiologyCellCycleLemma.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellCycleLemma

def ConstrainedCellCycleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_cycle_endgame (A : AdmissibleClass) :
    ConstrainedCellCycleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellCycleLemma
end HautevilleHouse
