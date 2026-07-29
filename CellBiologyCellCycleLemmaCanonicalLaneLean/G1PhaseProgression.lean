import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure G1PhaseProgressionPackage where
  growthFactorSignaling : Prop
  cyclinDSynthesis : Prop
  retinoblastomaProteinPhosphorylation : Prop
  e2fTranscription : Prop
  g1SPhaseTransition : Prop

structure G1PhaseProgressionEvidence (G : G1PhaseProgressionPackage) where
  growthFactorSignalingClosed : G.growthFactorSignaling
  cyclinDSynthesisClosed : G.cyclinDSynthesis
  retinoblastomaProteinPhosphorylationClosed : G.retinoblastomaProteinPhosphorylation
  e2fTranscriptionClosed : G.e2fTranscription
  g1SPhaseTransitionClosed : G.g1SPhaseTransition

def G1PhaseProgressionClosed (G : G1PhaseProgressionPackage) : Prop :=
  G.growthFactorSignaling ∧ G.cyclinDSynthesis ∧
  G.retinoblastomaProteinPhosphorylation ∧ G.e2fTranscription ∧ G.g1SPhaseTransition

theorem g1_phase_progression_closed_from_evidence
    (G : G1PhaseProgressionPackage) (E : G1PhaseProgressionEvidence G) :
    G1PhaseProgressionClosed G := by
  exact And.intro E.growthFactorSignalingClosed
    (And.intro E.cyclinDSynthesisClosed
      (And.intro E.retinoblastomaProteinPhosphorylationClosed
        (And.intro E.e2fTranscriptionClosed
          E.g1SPhaseTransitionClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse