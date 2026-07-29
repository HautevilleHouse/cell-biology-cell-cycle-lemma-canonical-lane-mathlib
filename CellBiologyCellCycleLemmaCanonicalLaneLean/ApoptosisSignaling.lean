import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure ApoptosisSignalingPackage where
  intrinsicPathway : Prop
  extrinsicPathway : Prop
  caspaseActivation : Prop
  mitochondrialPermeabilization : Prop
  cellDeathExecution : Prop

structure ApoptosisSignalingEvidence (A : ApoptosisSignalingPackage) where
  intrinsicPathwayClosed : A.intrinsicPathway
  extrinsicPathwayClosed : A.extrinsicPathway
  caspaseActivationClosed : A.caspaseActivation
  mitochondrialPermeabilizationClosed : A.mitochondrialPermeabilization
  cellDeathExecutionClosed : A.cellDeathExecution

def ApoptosisSignalingClosed (A : ApoptosisSignalingPackage) : Prop :=
  A.intrinsicPathway ∧ A.extrinsicPathway ∧ A.caspaseActivation ∧
  A.mitochondrialPermeabilization ∧ A.cellDeathExecution

theorem apoptosis_signaling_closed_from_evidence (A : ApoptosisSignalingPackage)
    (E : ApoptosisSignalingEvidence A) : ApoptosisSignalingClosed A :=
  And.intro E.intrinsicPathwayClosed
    (And.intro E.extrinsicPathwayClosed
      (And.intro E.caspaseActivationClosed
        (And.intro E.mitochondrialPermeabilizationClosed E.cellDeathExecutionClosed)))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse