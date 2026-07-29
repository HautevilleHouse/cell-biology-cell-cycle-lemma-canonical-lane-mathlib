import CellBiologyCellCycleLemma.CellCycleAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellCycleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellCycleLemma
end HautevilleHouse