import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure APC_Cdc20_Package (A : AdmissibleClass) where
  apcActivation : A.object -> Prop
  cdc20Binding : A.object -> Prop
  securinUbiquitination : Prop
  separaseActivation : A.object -> Prop

structure APC_Cdc20_Evidence (A : AdmissibleClass) (P : APC_Cdc20_Package A) where
  apcActivationClosed : P.apcActivation A.object
  cdc20BindingClosed : P.cdc20Binding A.object
  securinUbiquitinationClosed : P.securinUbiquitination
  separaseActivationClosed : P.separaseActivation A.object

def APC_Cdc20_Closed (A : AdmissibleClass) (P : APC_Cdc20_Package A) : Prop :=
  P.apcActivation A.object ∧ P.cdc20Binding A.object ∧ P.securinUbiquitination ∧ P.separaseActivation A.object

theorem apc_cdc20_closed_from_evidence (A : AdmissibleClass) (P : APC_Cdc20_Package A) (E : APC_Cdc20_Evidence A P) : APC_Cdc20_Closed A P := by
  exact And.intro E.apcActivationClosed (And.intro E.cdc20BindingClosed (And.intro E.securinUbiquitinationClosed E.separaseActivationClosed))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse