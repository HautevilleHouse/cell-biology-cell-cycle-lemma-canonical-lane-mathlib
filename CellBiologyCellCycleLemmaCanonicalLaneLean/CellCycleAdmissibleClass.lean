import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellCycleObject where
  cell : Type
  phase : String
  cyclinLevels : Prop
  checkpointStatus : Prop
  conclusion : checkpointStatus → cyclinLevels

def CellCycleWitnessClosed (O : CellCycleObject) : Prop :=
  O.cyclinLevels

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse