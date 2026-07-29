import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CyclinRegulationPackage (A : AdmissibleClass) where
  cyclinConcentration : A.object -> Prop
  cdkActivation : A.object -> Prop
  phosphorylationState : A.object -> Prop
  degradationSignal : Prop

structure CyclinRegulationEvidence (A : AdmissibleClass) (C : CyclinRegulationPackage A) where
  cyclinConcentrationClosed : C.cyclinConcentration A.object
  cdkActivationClosed : C.cdkActivation A.object
  phosphorylationStateClosed : C.phosphorylationState A.object
  degradationSignalClosed : C.degradationSignal

def CyclinRegulationClosed (A : AdmissibleClass) (C : CyclinRegulationPackage A) : Prop :=
  C.cyclinConcentration A.object ∧ C.cdkActivation A.object ∧ C.phosphorylationState A.object ∧ C.degradationSignal

theorem cyclin_regulation_closed_from_evidence (A : AdmissibleClass) (C : CyclinRegulationPackage A) (E : CyclinRegulationEvidence A C) : CyclinRegulationClosed A C := by
  exact And.intro E.cyclinConcentrationClosed (And.intro E.cdkActivationClosed (And.intro E.phosphorylationStateClosed E.degradationSignalClosed))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse