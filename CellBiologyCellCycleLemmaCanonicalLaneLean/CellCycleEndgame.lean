import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellCycleLemmaCanonicalLaneLean.CyclinRegulation
import CellBiologyCellCycleLemmaCanonicalLaneLean.CheckpointControl
import CellBiologyCellCycleLemmaCanonicalLaneLean.CellCyclePhaseTransition
import CellBiologyCellCycleLemmaCanonicalLaneLean.APCCdc20Regulation

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

def CellCycleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_cycle_endgame (A : AdmissibleClass) :
    CellCycleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse