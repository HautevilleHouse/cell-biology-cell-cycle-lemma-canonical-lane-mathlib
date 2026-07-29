import CellBiologyCellCycleLemma.CellCycleAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemma

structure CyclinCDKRegulationPackage where
  cyclinType : Type
  cdkType : Type
  cyclinConcentration : ℝ
  cdkActivity : ℝ
  phosphorylationState : Prop
  complexFormation : Prop

structure CyclinCDKRegulationEvidence (P : CyclinCDKRegulationPackage) where
  phosphorylationStateClosed : P.phosphorylationState
  complexFormationClosed : P.complexFormation

def CyclinCDKRegulationClosed (P : CyclinCDKRegulationPackage) : Prop :=
  P.phosphorylationState ∧ P.complexFormation

theorem cyclin_cdk_regulation_closed_from_evidence (P : CyclinCDKRegulationPackage)
    (E : CyclinCDKRegulationEvidence P) : CyclinCDKRegulationClosed P := by
  exact And.intro E.phosphorylationStateClosed E.complexFormationClosed

end CellBiologyCellCycleLemma
end HautevilleHouse