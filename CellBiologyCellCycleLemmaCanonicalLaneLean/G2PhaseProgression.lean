import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure G2PhaseProgressionPackage where
  dnaReplicationComplete : Prop
  cyclinAAccumulation : Prop
  cdk2Activation : Prop
  wee1Regulation : Prop
  cdc25Activation : Prop
  mitoticEntry : Prop

structure G2PhaseProgressionEvidence (G : G2PhaseProgressionPackage) where
  dnaReplicationCompleteClosed : G.dnaReplicationComplete
  cyclinAAccumulationClosed : G.cyclinAAccumulation
  cdk2ActivationClosed : G.cdk2Activation
  wee1RegulationClosed : G.wee1Regulation
  cdc25ActivationClosed : G.cdc25Activation
  mitoticEntryClosed : G.mitoticEntry

def G2PhaseProgressionClosed (G : G2PhaseProgressionPackage) : Prop :=
  G.dnaReplicationComplete ∧ G.cyclinAAccumulation ∧
  G.cdk2Activation ∧ G.wee1Regulation ∧ G.cdc25Activation ∧ G.mitoticEntry

theorem g2_phase_progression_closed_from_evidence
    (G : G2PhaseProgressionPackage) (E : G2PhaseProgressionEvidence G) :
    G2PhaseProgressionClosed G := by
  exact And.intro E.dnaReplicationCompleteClosed
    (And.intro E.cyclinAAccumulationClosed
      (And.intro E.cdk2ActivationClosed
        (And.intro E.wee1RegulationClosed
          (And.intro E.cdc25ActivationClosed
            E.mitoticEntryClosed))))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse