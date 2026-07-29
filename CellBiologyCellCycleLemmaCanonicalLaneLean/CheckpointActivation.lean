import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CheckpointActivationPackage where
  g1CheckpointActive : Prop
  g2CheckpointActive : Prop
  metaphaseCheckpointActive : Prop
  dnaDamageCheckpointArrests : Prop
  spindleAssemblyCheckpoint : Prop

structure CheckpointActivationEvidence (C : CheckpointActivationPackage) where
  g1CheckpointActiveClosed : C.g1CheckpointActive
  g2CheckpointActiveClosed : C.g2CheckpointActive
  metaphaseCheckpointActiveClosed : C.metaphaseCheckpointActive
  dnaDamageCheckpointArrestsClosed : C.dnaDamageCheckpointArrests
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint

def CheckpointActivationClosed (C : CheckpointActivationPackage) : Prop :=
  C.g1CheckpointActive ∧ C.g2CheckpointActive ∧
  C.metaphaseCheckpointActive ∧ C.dnaDamageCheckpointArrests ∧ C.spindleAssemblyCheckpoint

theorem checkpoint_activation_closed_from_evidence
    (C : CheckpointActivationPackage) (E : CheckpointActivationEvidence C) :
    CheckpointActivationClosed C := by
  exact And.intro E.g1CheckpointActiveClosed
    (And.intro E.g2CheckpointActiveClosed
      (And.intro E.metaphaseCheckpointActiveClosed
        (And.intro E.dnaDamageCheckpointArrestsClosed
          E.spindleAssemblyCheckpointClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse