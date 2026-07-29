import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleDynamicsPackage (R : CellCycleRegulationPackage) where
  differentialEquations : Type u
  g1PhaseLength : Prop
  sPhaseLength : Prop
  g2PhaseLength : Prop
  mPhaseLength : Prop
  totalCycleTime : Prop
  growthFactorDependence : Prop
  dynamicsEvidence : R.g1PhaseControl ∧ R.sPhaseEntry ∧ R.g2MPhaseTransition

def CellCycleDynamicsClosed (P : CellCycleDynamicsPackage R) : Prop :=
  P.g1PhaseLength ∧ P.sPhaseLength ∧ P.g2PhaseLength ∧ P.mPhaseLength ∧ P.totalCycleTime ∧ P.growthFactorDependence ∧ P.dynamicsEvidence

theorem cell_cycle_dynamics_closed (P : CellCycleDynamicsPackage R) : CellCycleDynamicsClosed P := by
  exact And.intro P.g1PhaseLength (And.intro P.sPhaseLength (And.intro P.g2PhaseLength (And.intro P.mPhaseLength (And.intro P.totalCycleTime (And.intro P.growthFactorDependence P.dynamicsEvidence)))))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse
