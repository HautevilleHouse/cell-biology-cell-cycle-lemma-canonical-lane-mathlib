import HautevilleHouse.CellBiologyCellCycleLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleCheckpointsPackage where
  g1Checkpoint : Prop
  g2Checkpoint : Prop
  metaphaseCheckpoint : Prop
  dnaDamageCheckpoint : Prop
  spindleAssemblyCheckpoint : Prop

structure CellCycleCheckpointsEvidence (C : CellCycleCheckpointsPackage) where
  g1CheckpointClosed : C.g1Checkpoint
  g2CheckpointClosed : C.g2Checkpoint
  metaphaseCheckpointClosed : C.metaphaseCheckpoint
  dnaDamageCheckpointClosed : C.dnaDamageCheckpoint
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint

def CellCycleCheckpointsClosed (C : CellCycleCheckpointsPackage) : Prop :=
  C.g1Checkpoint ∧ C.g2Checkpoint ∧ C.metaphaseCheckpoint ∧
  C.dnaDamageCheckpoint ∧ C.spindleAssemblyCheckpoint

theorem cell_cycle_checkpoints_closed_from_evidence
    (C : CellCycleCheckpointsPackage) (E : CellCycleCheckpointsEvidence C) :
    CellCycleCheckpointsClosed C := by
  exact And.intro E.g1CheckpointClosed
    (And.intro E.g2CheckpointClosed
      (And.intro E.metaphaseCheckpointClosed
        (And.intro E.dnaDamageCheckpointClosed E.spindleAssemblyCheckpointClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse