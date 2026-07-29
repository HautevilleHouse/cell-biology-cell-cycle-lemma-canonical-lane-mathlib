import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CyclinDependentKinasePackage where
  cdkType : String
  cyclinBinding : Prop
  phosphorylationState : Prop
  inhibitoryPhosphorylation : Prop
  activatingPhosphorylation : Prop
  substrateSpecificity : Prop

structure CyclinDependentKinaseEvidence (C : CyclinDependentKinasePackage) where
  cyclinBindingClosed : C.cyclinBinding
  phosphorylationStateClosed : C.phosphorylationState
  inhibitoryPhosphorylationClosed : C.inhibitoryPhosphorylation
  activatingPhosphorylationClosed : C.activatingPhosphorylation
  substrateSpecificityClosed : C.substrateSpecificity

def CyclinDependentKinaseClosed (C : CyclinDependentKinasePackage) : Prop :=
  C.cyclinBinding ∧ C.phosphorylationState ∧ C.inhibitoryPhosphorylation ∧
  C.activatingPhosphorylation ∧ C.substrateSpecificity

theorem cyclin_dependent_kinase_closed_from_evidence (C : CyclinDependentKinasePackage)
    (E : CyclinDependentKinaseEvidence C) : CyclinDependentKinaseClosed C :=
  And.intro E.cyclinBindingClosed
    (And.intro E.phosphorylationStateClosed
      (And.intro E.inhibitoryPhosphorylationClosed
        (And.intro E.activatingPhosphorylationClosed E.substrateSpecificityClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse