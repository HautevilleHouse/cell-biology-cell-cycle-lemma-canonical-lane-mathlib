import HautevilleHouse.CellBiologyCellCycleLemmaCanonicalLaneLean.CellCycleCheckpointPackage

/-!
# Cyclin-CDK Package

Encodes cyclin-dependent kinase complexes and their regulation.
-/

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CyclinCDKPackage where
  cyclinD_CDK4_6 : Prop
  cyclinE_CDK2 : Prop
  cyclinA_CDK2 : Prop
  cyclinB_CDK1 : Prop
  CDKInhibitors : Prop
  phosphorylationRegulation : Prop

structure CyclinCDKEvidence (C : CyclinCDKPackage) where
  cyclinD_CDK4_6Closed : C.cyclinD_CDK4_6
  cyclinE_CDK2Closed : C.cyclinE_CDK2
  cyclinA_CDK2Closed : C.cyclinA_CDK2
  cyclinB_CDK1Closed : C.cyclinB_CDK1
  CDKInhibitorsClosed : C.CDKInhibitors
  phosphorylationRegulationClosed : C.phosphorylationRegulation

def CyclinCDKClosed (C : CyclinCDKPackage) : Prop :=
  C.cyclinD_CDK4_6 ∧ C.cyclinE_CDK2 ∧ C.cyclinA_CDK2 ∧ C.cyclinB_CDK1 ∧ C.CDKInhibitors ∧ C.phosphorylationRegulation

theorem cyclin_cdk_closed_from_evidence (C : CyclinCDKPackage) (E : CyclinCDKEvidence C) : CyclinCDKClosed C := by
  exact And.intro E.cyclinD_CDK4_6Closed
    (And.intro E.cyclinE_CDK2Closed
      (And.intro E.cyclinA_CDK2Closed
        (And.intro E.cyclinB_CDK1Closed
          (And.intro E.CDKInhibitorsClosed E.phosphorylationRegulationClosed))))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse