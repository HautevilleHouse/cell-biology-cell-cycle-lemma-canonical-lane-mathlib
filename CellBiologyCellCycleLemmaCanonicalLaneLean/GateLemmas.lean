import HautevilleHouse.CellBiologyCellCycleLemma.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellCycleLemma

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCellCycleLemma
end HautevilleHouse
