import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CyclinCdkInteractionPackage where
  cyclinBinding : Prop
  cdkActivation : Prop
  substratePhosphorylation : Prop
  cellCycleProgression : Prop

structure CyclinCdkInteractionEvidence (C : CyclinCdkInteractionPackage) where
  cyclinBindingClosed : C.cyclinBinding
  cdkActivationClosed : C.cdkActivation
  substratePhosphorylationClosed : C.substratePhosphorylation
  cellCycleProgressionClosed : C.cellCycleProgression

def CyclinCdkInteractionClosed (C : CyclinCdkInteractionPackage) : Prop :=
  C.cyclinBinding ∧ C.cdkActivation ∧ C.substratePhosphorylation ∧ C.cellCycleProgression

theorem cyclin_cdk_interaction_closed_from_evidence (C : CyclinCdkInteractionPackage)
    (E : CyclinCdkInteractionEvidence C) : CyclinCdkInteractionClosed C := by
  exact And.intro E.cyclinBindingClosed
    (And.intro E.cdkActivationClosed
      (And.intro E.substratePhosphorylationClosed E.cellCycleProgressionClosed))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse