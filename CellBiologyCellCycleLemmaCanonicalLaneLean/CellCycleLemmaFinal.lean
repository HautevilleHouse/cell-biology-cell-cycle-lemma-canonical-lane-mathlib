import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

def ConstrainedCellCycleLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_cycle_lemma_endgame (A : AdmissibleClass) :
    ConstrainedCellCycleLemmaClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse