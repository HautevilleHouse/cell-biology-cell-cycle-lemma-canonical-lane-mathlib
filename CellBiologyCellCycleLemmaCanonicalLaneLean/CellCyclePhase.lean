import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCyclePhasePackage where
  phaseName : String
  duration : ℕ
  dnaReplication : Prop
  growthPhase : Prop
  divisionPhase : Prop

structure CellCyclePhaseEvidence (P : CellCyclePhasePackage) where
  durationClosed : P.duration > 0
  dnaReplicationClosed : P.dnaReplication ↔ P.phaseName = "S"
  growthPhaseClosed : P.growthPhase ↔ (P.phaseName = "G1" ∨ P.phaseName = "G2")
  divisionPhaseClosed : P.divisionPhase ↔ P.phaseName = "M"

def CellCyclePhaseClosed (P : CellCyclePhasePackage) : Prop :=
  P.duration > 0 ∧ (P.dnaReplication ↔ P.phaseName = "S") ∧ 
  (P.growthPhase ↔ (P.phaseName = "G1" ∨ P.phaseName = "G2")) ∧ 
  (P.divisionPhase ↔ P.phaseName = "M")

theorem cell_cycle_phase_closed_from_evidence (P : CellCyclePhasePackage) 
    (E : CellCyclePhaseEvidence P) : CellCyclePhaseClosed P := by
  exact And.intro E.durationClosed 
    (And.intro E.dnaReplicationClosed 
      (And.intro E.growthPhaseClosed E.divisionPhaseClosed))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse