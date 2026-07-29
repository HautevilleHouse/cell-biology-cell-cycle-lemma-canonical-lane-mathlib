import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemma

structure AdmittedCellCycleObject where
  cellType : Type
  cyclePhaseTransition : Prop
  checkpointIntegrity : Prop
  evidenceCompleted : checkpointIntegrity

structure AdmissibleClass where
  object : AdmittedCellCycleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.checkpointIntegrity ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellCycleLemma
end HautevilleHouse
