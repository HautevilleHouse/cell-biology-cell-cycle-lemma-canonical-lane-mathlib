import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleCheckpointPackage where
  cyclinLevels : Prop
  cdkActivity : Prop
  checkpointActivation : Prop
  dnaDamageSignal : Prop
  cellCycleArrest : Prop

structure CellCycleCheckpointEvidence (C : CellCycleCheckpointPackage) where
  cyclinLevelsClosed : C.cyclinLevels
  cdkActivityClosed : C.cdkActivity
  checkpointActivationClosed : C.checkpointActivation
  dnaDamageSignalClosed : C.dnaDamageSignal
  cellCycleArrestClosed : C.cellCycleArrest

def CellCycleCheckpointClosed (C : CellCycleCheckpointPackage) : Prop :=
  C.cyclinLevels ∧ C.cdkActivity ∧ C.checkpointActivation ∧ C.dnaDamageSignal ∧ C.cellCycleArrest

theorem cell_cycle_checkpoint_closed_from_evidence (C : CellCycleCheckpointPackage)
    (E : CellCycleCheckpointEvidence C) : CellCycleCheckpointClosed C := by
  exact And.intro E.cyclinLevelsClosed
    (And.intro E.cdkActivityClosed
      (And.intro E.checkpointActivationClosed
        (And.intro E.dnaDamageSignalClosed E.cellCycleArrestClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse