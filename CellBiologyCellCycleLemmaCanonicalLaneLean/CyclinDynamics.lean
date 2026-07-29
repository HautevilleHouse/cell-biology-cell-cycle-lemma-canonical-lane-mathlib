import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CyclinDynamicsPackage where
  cyclinDSynthesis : Prop
  cyclinEDegradation : Prop
  cyclinBAccumulation : Prop
  cyclinApeaksAtG2 : Prop
  oscillatoryBehavior : Prop

structure CyclinDynamicsEvidence (C : CyclinDynamicsPackage) where
  cyclinDSynthesisClosed : C.cyclinDSynthesis
  cyclinEDegradationClosed : C.cyclinEDegradation
  cyclinBAccumulationClosed : C.cyclinBAccumulation
  cyclinApeaksAtG2Closed : C.cyclinApeaksAtG2
  oscillatoryBehaviorClosed : C.oscillatoryBehavior

def CyclinDynamicsClosed (C : CyclinDynamicsPackage) : Prop :=
  C.cyclinDSynthesis ∧ C.cyclinEDegradation ∧
  C.cyclinBAccumulation ∧ C.cyclinApeaksAtG2 ∧ C.oscillatoryBehavior

theorem cyclin_dynamics_closed_from_evidence
    (C : CyclinDynamicsPackage) (E : CyclinDynamicsEvidence C) :
    CyclinDynamicsClosed C := by
  exact And.intro E.cyclinDSynthesisClosed
    (And.intro E.cyclinEDegradationClosed
      (And.intro E.cyclinBAccumulationClosed
        (And.intro E.cyclinApeaksAtG2Closed
          E.oscillatoryBehaviorClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse