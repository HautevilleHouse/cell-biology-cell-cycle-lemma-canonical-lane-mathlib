import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure MitoticExitPackage where
  anaphasePromotion : Prop
  securinDegradation : Prop
  separaseActivation : Prop
  sisterChromatidSeparation : Prop
  cytokinesisInitiation : Prop

structure MitoticExitEvidence (M : MitoticExitPackage) where
  anaphasePromotionClosed : M.anaphasePromotion
  securinDegradationClosed : M.securinDegradation
  separaseActivationClosed : M.separaseActivation
  sisterChromatidSeparationClosed : M.sisterChromatidSeparation
  cytokinesisInitiationClosed : M.cytokinesisInitiation

def MitoticExitClosed (M : MitoticExitPackage) : Prop :=
  M.anaphasePromotion ∧ M.securinDegradation ∧
  M.separaseActivation ∧ M.sisterChromatidSeparation ∧ M.cytokinesisInitiation

theorem mitotic_exit_closed_from_evidence
    (M : MitoticExitPackage) (E : MitoticExitEvidence M) :
    MitoticExitClosed M := by
  exact And.intro E.anaphasePromotionClosed
    (And.intro E.securinDegradationClosed
      (And.intro E.separaseActivationClosed
        (And.intro E.sisterChromatidSeparationClosed
          E.cytokinesisInitiationClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse