import HautevilleHouse.CellBiologyCellCycleLemma.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.checkpointIntegrity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.evidenceCompleted

end CellBiologyCellCycleLemma
end HautevilleHouse
