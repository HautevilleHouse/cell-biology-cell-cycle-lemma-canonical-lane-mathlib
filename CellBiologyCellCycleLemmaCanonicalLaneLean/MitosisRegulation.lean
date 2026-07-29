import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure MitosisPhases where
  prophase : Prop
  prometaphase : Prop
  metaphase : Prop
  anaphase : Prop
  telophase : Prop
  cytokinesis : Prop
  phasesOrdered : prophase ∧ prometaphase ∧ metaphase ∧ anaphase ∧ telophase ∧ cytokinesis

def MitosisPhasesCompleted (M : MitosisPhases) : Prop :=
  M.prophase ∧ M.prometaphase ∧ M.metaphase ∧ M.anaphase ∧ M.telophase ∧ M.cytokinesis

structure MitosisRegulation where
  cyclinBCDK1Active : Prop
  separaseActive : Prop
  cohesionCleavage : Prop
  spindleCheckpointSatisfied : Prop
  mitosisPhases : MitosisPhases

def MitosisRegulationClosed (R : MitosisRegulation) : Prop :=
  R.cyclinBCDK1Active ∧ R.separaseActive ∧ R.cohesionCleavage ∧ R.spindleCheckpointSatisfied ∧ MitosisPhasesCompleted R.mitosisPhases

theorem mitosis_regulation_closed_from_evidence (R : MitosisRegulation) (h : R.cyclinBCDK1Active ∧ R.separaseActive ∧ R.cohesionCleavage ∧ R.spindleCheckpointSatisfied ∧ MitosisPhasesCompleted R.mitosisPhases) : MitosisRegulationClosed R := by
  exact h

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse