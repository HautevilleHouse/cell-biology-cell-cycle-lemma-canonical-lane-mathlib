import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure DNADamageResponsePackage where
  atrActivation : Prop
  atmActivation : Prop
  p53Accumulation : Prop
  cellCycleArrest : Prop
  repairRecruitment : Prop

structure DNADamageResponseEvidence (D : DNADamageResponsePackage) where
  atrActivationClosed : D.atrActivation
  atmActivationClosed : D.atmActivation
  p53AccumulationClosed : D.p53Accumulation
  cellCycleArrestClosed : D.cellCycleArrest
  repairRecruitmentClosed : D.repairRecruitment

def DNADamageResponseClosed (D : DNADamageResponsePackage) : Prop :=
  D.atrActivation ∧ D.atmActivation ∧
  D.p53Accumulation ∧ D.cellCycleArrest ∧ D.repairRecruitment

theorem dna_damage_response_closed_from_evidence
    (D : DNADamageResponsePackage) (E : DNADamageResponseEvidence D) :
    DNADamageResponseClosed D := by
  exact And.intro E.atrActivationClosed
    (And.intro E.atmActivationClosed
      (And.intro E.p53AccumulationClosed
        (And.intro E.cellCycleArrestClosed
          E.repairRecruitmentClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse