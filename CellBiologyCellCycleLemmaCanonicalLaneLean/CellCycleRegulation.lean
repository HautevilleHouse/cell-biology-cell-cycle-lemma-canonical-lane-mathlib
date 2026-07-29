import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleRegulationPackage where
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mPhase : Prop
  checkpointControl : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  g1PhaseClosed : C.g1Phase
  sPhaseClosed : C.sPhase
  g2PhaseClosed : C.g2Phase
  mPhaseClosed : C.mPhase
  checkpointControlClosed : C.checkpointControl

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.g1Phase ∧ C.sPhase ∧ C.g2Phase ∧ C.mPhase ∧ C.checkpointControl

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage)
    (E : CellCycleRegulationEvidence C) : CellCycleRegulationClosed C := by
  exact And.intro E.g1PhaseClosed
    (And.intro E.sPhaseClosed
      (And.intro E.g2PhaseClosed
        (And.intro E.mPhaseClosed E.checkpointControlClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse