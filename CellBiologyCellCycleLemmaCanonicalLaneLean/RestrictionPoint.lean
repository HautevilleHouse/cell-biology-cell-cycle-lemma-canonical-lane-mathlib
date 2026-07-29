import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure RestrictionPoint where
  commitmentToDivision : Prop
  rbPhosphorylation : Prop
  e2fRelease : Prop
  passed : RestrictionPoint -> Prop

def RestrictionPointPassed (R : RestrictionPoint) : Prop :=
  R.commitmentToDivision ∧ R.rbPhosphorylation ∧ R.e2fRelease

structure RestrictionPointEvidence (R : RestrictionPoint) where
  commitmentToDivisionClosed : R.commitmentToDivision
  rbPhosphorylationClosed : R.rbPhosphorylation
  e2fReleaseClosed : R.e2fRelease

def RestrictionPointClosed (R : RestrictionPoint) : Prop :=
  R.commitmentToDivision ∧ R.rbPhosphorylation ∧ R.e2fRelease

theorem restriction_point_closed_from_evidence (R : RestrictionPoint) (E : RestrictionPointEvidence R) : RestrictionPointClosed R := by
  exact And.intro E.commitmentToDivisionClosed (And.intro E.rbPhosphorylationClosed E.e2fReleaseClosed)

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse