import CellBiologyCellCycleLemmaCanonicalLaneLean.CellDivision

/-!
# Cell Cycle Signaling Package
-/

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleSignalingPackage {R : CellCycleRegulationPackage}
    {C : CheckpointControlPackage R} {D : CellDivisionPackage C} where
  growthFactorSignaling : Prop
  mitogenActivatedProteinKinaseCascade : Prop
  p53Pathway : Prop
  wntBetaCateninPathway : Prop
  hippoPathway : Prop

structure CellCycleSignalingEvidence {R : CellCycleRegulationPackage}
    {C : CheckpointControlPackage R} {D : CellDivisionPackage C}
    (S : CellCycleSignalingPackage D) where
  growthFactorSignalingClosed : S.growthFactorSignaling
  mitogenActivatedProteinKinaseCascadeClosed : S.mitogenActivatedProteinKinaseCascade
  p53PathwayClosed : S.p53Pathway
  wntBetaCateninPathwayClosed : S.wntBetaCateninPathway
  hippoPathwayClosed : S.hippoPathway

def CellCycleSignalingClosed {R : CellCycleRegulationPackage}
    {C : CheckpointControlPackage R} {D : CellDivisionPackage C}
    (S : CellCycleSignalingPackage D) : Prop :=
  S.growthFactorSignaling ∧ S.mitogenActivatedProteinKinaseCascade ∧
  S.p53Pathway ∧ S.wntBetaCateninPathway ∧ S.hippoPathway

theorem cell_cycle_signaling_closed_from_evidence
    {R : CellCycleRegulationPackage} {C : CheckpointControlPackage R}
    {D : CellDivisionPackage C} (S : CellCycleSignalingPackage D)
    (E : CellCycleSignalingEvidence S) : CellCycleSignalingClosed S := by
  exact And.intro E.growthFactorSignalingClosed
    (And.intro E.mitogenActivatedProteinKinaseCascadeClosed
      (And.intro E.p53PathwayClosed
        (And.intro E.wntBetaCateninPathwayClosed
          E.hippoPathwayClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse