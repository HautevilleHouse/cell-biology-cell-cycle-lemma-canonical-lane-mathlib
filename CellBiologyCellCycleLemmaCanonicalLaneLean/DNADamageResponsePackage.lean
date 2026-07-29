import HautevilleHouse.CellBiologyCellCycleLemmaCanonicalLaneLean.RestrictionPointPackage

/-!
# DNA Damage Response Package

Models the DNA damage checkpoints involving p53, ATM/ATR.
-/

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure DNADamageResponsePackage where
  atm_ATR_Activation : Prop
  p53Stabilization : Prop
  p21Induction : Prop
  cellCycleArrest : Prop
  dnaRepairPathways : Prop
  apoptosis : Prop

structure DNADamageResponseEvidence (D : DNADamageResponsePackage) where
  atm_ATR_ActivationClosed : D.atm_ATR_Activation
  p53StabilizationClosed : D.p53Stabilization
  p21InductionClosed : D.p21Induction
  cellCycleArrestClosed : D.cellCycleArrest
  dnaRepairPathwaysClosed : D.dnaRepairPathways
  apoptosisClosed : D.apoptosis

def DNADamageResponseClosed (D : DNADamageResponsePackage) : Prop :=
  D.atm_ATR_Activation ∧ D.p53Stabilization ∧ D.p21Induction ∧ D.cellCycleArrest ∧ D.dnaRepairPathways ∧ D.apoptosis

theorem dna_damage_response_closed_from_evidence (D : DNADamageResponsePackage) (E : DNADamageResponseEvidence D) : DNADamageResponseClosed D := by
  exact And.intro E.atm_ATR_ActivationClosed
    (And.intro E.p53StabilizationClosed
      (And.intro E.p21InductionClosed
        (And.intro E.cellCycleArrestClosed
          (And.intro E.dnaRepairPathwaysClosed E.apoptosisClosed))))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse