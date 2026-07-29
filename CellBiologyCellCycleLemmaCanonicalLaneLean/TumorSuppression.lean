import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure TumorSuppressionPackage where
  p53Pathway : Prop
  rbPathway : Prop
  apoptosisInduction : Prop
  cellCycleArrest : Prop
  dnaRepair : Prop

structure TumorSuppressionEvidence (T : TumorSuppressionPackage) where
  p53PathwayClosed : T.p53Pathway
  rbPathwayClosed : T.rbPathway
  apoptosisInductionClosed : T.apoptosisInduction
  cellCycleArrestClosed : T.cellCycleArrest
  dnaRepairClosed : T.dnaRepair

def TumorSuppressionClosed (T : TumorSuppressionPackage) : Prop :=
  T.p53Pathway ∧ T.rbPathway ∧ T.apoptosisInduction ∧ T.cellCycleArrest ∧ T.dnaRepair

theorem tumor_suppression_closed_from_evidence (T : TumorSuppressionPackage)
    (E : TumorSuppressionEvidence T) : TumorSuppressionClosed T :=
  And.intro E.p53PathwayClosed
    (And.intro E.rbPathwayClosed
      (And.intro E.apoptosisInductionClosed
        (And.intro E.cellCycleArrestClosed E.dnaRepairClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse