import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleEnginePackage (R : CellCycleRegulationPackage) (C : CheckpointArrestPackage) where
  engineComponents : Type u
  cyclinCdkComplexes : Type v
  phaseTransitionTiming : Prop
  engineRegulation : Prop
  engineEvidence : R.g1PhaseControl ∧ R.sPhaseEntry ∧ R.g2MPhaseTransition ∧ C.g1SArrest ∧ C.g2MArrest
  phaseTransitionTimingClosed : phaseTransitionTiming
  engineRegulationClosed : engineRegulation

def CellCycleEngineClosed (P : CellCycleEnginePackage R C) : Prop :=
  P.phaseTransitionTiming ∧ P.engineRegulation ∧ P.engineEvidence

theorem cell_cycle_engine_closed (P : CellCycleEnginePackage R C) : CellCycleEngineClosed P := by
  exact And.intro P.phaseTransitionTimingClosed (And.intro P.engineRegulationClosed P.engineEvidence)

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse
