import HautevilleHouse.CellBiologyCellCycleLemmaCanonicalLaneLean.CellCycleCheckpointPackage

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleRegulationPackage {C : CellCycleCheckpointPackage} (evidence : CellCycleCheckpointEvidence C) where
  cyclinDependentKinases : Prop
  cyclinLevels : Prop
  cdkInhibitors : Prop
  phosphorylationEvents : Prop
  transcriptionControl : Prop

structure CellCycleRegulationEvidence {C : CellCycleCheckpointPackage} {evidence : CellCycleCheckpointEvidence C}
    (R : CellCycleRegulationPackage evidence) where
  cyclinDependentKinasesClosed : R.cyclinDependentKinases
  cyclinLevelsClosed : R.cyclinLevels
  cdkInhibitorsClosed : R.cdkInhibitors
  phosphorylationEventsClosed : R.phosphorylationEvents
  transcriptionControlClosed : R.transcriptionControl

def CellCycleRegulationClosed {C : CellCycleCheckpointPackage} {evidence : CellCycleCheckpointEvidence C}
    (R : CellCycleRegulationPackage evidence) : Prop :=
  R.cyclinDependentKinases ∧ R.cyclinLevels ∧ R.cdkInhibitors ∧ R.phosphorylationEvents ∧ R.transcriptionControl

theorem cell_cycle_regulation_closed_from_evidence
    {C : CellCycleCheckpointPackage} {evidence : CellCycleCheckpointEvidence C}
    (R : CellCycleRegulationPackage evidence) (E : CellCycleRegulationEvidence R) :
    CellCycleRegulationClosed R := by
  exact And.intro E.cyclinDependentKinasesClosed
    (And.intro E.cyclinLevelsClosed
      (And.intro E.cdkInhibitorsClosed
        (And.intro E.phosphorylationEventsClosed E.transcriptionControlClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse