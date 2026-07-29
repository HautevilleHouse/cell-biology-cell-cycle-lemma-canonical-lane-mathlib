import HautevilleHouse.CellBiologyCellCycleLemmaCanonicalLaneLean.BridgeLemmas

/-!
# Cell Cycle Checkpoint Package

This package encodes the major cell cycle checkpoints: G1/S, G2/M, and spindle checkpoint.
-/

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CheckpointPackage where
  g1sCheckpoint : Prop
  g2mCheckpoint : Prop
  spindleCheckpoint : Prop
  dnaDamageIntegrity : Prop
  checkpointSignalingPathway : Prop

structure CheckpointEvidence (C : CheckpointPackage) where
  g1sCheckpointClosed : C.g1sCheckpoint
  g2mCheckpointClosed : C.g2mCheckpoint
  spindleCheckpointClosed : C.spindleCheckpoint
  dnaDamageIntegrityClosed : C.dnaDamageIntegrity
  checkpointSignalingPathwayClosed : C.checkpointSignalingPathway

def CheckpointClosed (C : CheckpointPackage) : Prop :=
  C.g1sCheckpoint ∧ C.g2mCheckpoint ∧ C.spindleCheckpoint ∧ C.dnaDamageIntegrity ∧ C.checkpointSignalingPathway

theorem checkpoint_closed_from_evidence (C : CheckpointPackage) (E : CheckpointEvidence C) : CheckpointClosed C := by
  exact And.intro E.g1sCheckpointClosed
    (And.intro E.g2mCheckpointClosed
      (And.intro E.spindleCheckpointClosed
        (And.intro E.dnaDamageIntegrityClosed E.checkpointSignalingPathwayClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse