import HautevilleHouse.CellBiologyCellCycleLemmaCanonicalLaneLean.CyclinCDKPackage

/-!
# Restriction Point Package

Models the restriction point in G1 regulated by Rb and E2F.
-/

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure RestrictionPointPackage where
  rbProtein : Prop
  e2fTranscriptionFactor : Prop
  rbPhosphorylation : Prop
  e2fRelease : Prop
  transcriptionalProgram : Prop

structure RestrictionPointEvidence (R : RestrictionPointPackage) where
  rbProteinClosed : R.rbProtein
  e2fTranscriptionFactorClosed : R.e2fTranscriptionFactor
  rbPhosphorylationClosed : R.rbPhosphorylation
  e2fReleaseClosed : R.e2fRelease
  transcriptionalProgramClosed : R.transcriptionalProgram

def RestrictionPointClosed (R : RestrictionPointPackage) : Prop :=
  R.rbProtein ∧ R.e2fTranscriptionFactor ∧ R.rbPhosphorylation ∧ R.e2fRelease ∧ R.transcriptionalProgram

theorem restriction_point_closed_from_evidence (R : RestrictionPointPackage) (E : RestrictionPointEvidence R) : RestrictionPointClosed R := by
  exact And.intro E.rbProteinClosed
    (And.intro E.e2fTranscriptionFactorClosed
      (And.intro E.rbPhosphorylationClosed
        (And.intro E.e2fReleaseClosed E.transcriptionalProgramClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse