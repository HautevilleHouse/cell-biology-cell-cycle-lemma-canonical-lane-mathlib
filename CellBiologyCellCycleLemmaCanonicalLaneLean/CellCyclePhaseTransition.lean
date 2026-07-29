import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCyclePhase (A : AdmissibleClass) where
  phase : String
  cyclinActivity : A.object -> Prop
  cdkActivity : A.object -> Prop

structure PhaseTransitionPackage (A : AdmissibleClass) (from to : CellCyclePhase A) where
  initiationSignal : Prop
  completionSignal : Prop
  transitionAllowed : Prop
  transitionEvidence : from.cyclinActivity A.object → to.cyclinActivity A.object

structure PhaseTransitionEvidence (A : AdmissibleClass) {from to : CellCyclePhase A} (T : PhaseTransitionPackage A from to) where
  initiationSignalClosed : T.initiationSignal
  completionSignalClosed : T.completionSignal
  transitionAllowedClosed : T.transitionAllowed

def PhaseTransitionClosed (A : AdmissibleClass) {from to : CellCyclePhase A} (T : PhaseTransitionPackage A from to) : Prop :=
  T.initiationSignal ∧ T.completionSignal ∧ T.transitionAllowed

theorem phase_transition_closed_from_evidence (A : AdmissibleClass) {from to : CellCyclePhase A} (T : PhaseTransitionPackage A from to) (E : PhaseTransitionEvidence A T) : PhaseTransitionClosed A T := by
  exact And.intro E.initiationSignalClosed (And.intro E.completionSignalClosed E.transitionAllowedClosed)

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse