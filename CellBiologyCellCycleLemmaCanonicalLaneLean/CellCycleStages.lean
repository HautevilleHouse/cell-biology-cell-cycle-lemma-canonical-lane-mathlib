import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleStages where
  G1 : Prop
  S : Prop
  G2 : Prop
  M : Prop
  G0 : Prop
  progressionOrdered : G1 ∧ S ∧ G2 ∧ M

def CellCycleStagesClosed (C : CellCycleStages) : Prop :=
  C.G1 ∧ C.S ∧ C.G2 ∧ C.M

theorem cell_cycle_stages_closed_from_evidence (C : CellCycleStages) (h : C.G1 ∧ C.S ∧ C.G2 ∧ C.M) : CellCycleStagesClosed C := by
  exact h

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse