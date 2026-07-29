import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleProgressionPackage where
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mitosisPhase : Prop
  cytokinesis : Prop
  phaseTransitionsRegulated : Prop

structure CellCycleProgressionEvidence (P : CellCycleProgressionPackage) where
  g1PhaseClosed : P.g1Phase
  sPhaseClosed : P.sPhase
  g2PhaseClosed : P.g2Phase
  mitosisPhaseClosed : P.mitosisPhase
  cytokinesisClosed : P.cytokinesis
  phaseTransitionsRegulatedClosed : P.phaseTransitionsRegulated

def CellCycleProgressionClosed (P : CellCycleProgressionPackage) : Prop :=
  P.g1Phase ∧ P.sPhase ∧ P.g2Phase ∧ P.mitosisPhase ∧ P.cytokinesis ∧ P.phaseTransitionsRegulated

theorem cell_cycle_progression_closed_from_evidence (P : CellCycleProgressionPackage)
    (E : CellCycleProgressionEvidence P) : CellCycleProgressionClosed P :=
  And.intro E.g1PhaseClosed
    (And.intro E.sPhaseClosed
      (And.intro E.g2PhaseClosed
        (And.intro E.mitosisPhaseClosed
          (And.intro E.cytokinesisClosed E.phaseTransitionsRegulatedClosed))))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse