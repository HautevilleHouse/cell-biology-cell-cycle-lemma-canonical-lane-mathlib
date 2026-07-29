import CellBiologyCellCycleLemmaCanonicalLaneLean.CheckpointControl

/-!
# Cell Division Package
-/

namespace HautevilleHouse
namespace CellBiologyCellCycleLemmaCanonicalLaneLean

structure CellDivisionPackage {R : CellCycleRegulationPackage}
    {C : CheckpointControlPackage R} where
  mitosisProphase : Prop
  mitosisPrometaphase : Prop
  mitosisMetaphase : Prop
  mitosisAnaphase : Prop
  mitosisTelophase : Prop
  cytokinesis : Prop

structure CellDivisionEvidence {R : CellCycleRegulationPackage}
    {C : CheckpointControlPackage R} (D : CellDivisionPackage C) where
  mitosisProphaseClosed : D.mitosisProphase
  mitosisPrometaphaseClosed : D.mitosisPrometaphase
  mitosisMetaphaseClosed : D.mitosisMetaphase
  mitosisAnaphaseClosed : D.mitosisAnaphase
  mitosisTelophaseClosed : D.mitosisTelophase
  cytokinesisClosed : D.cytokinesis

def CellDivisionClosed {R : CellCycleRegulationPackage}
    {C : CheckpointControlPackage R} (D : CellDivisionPackage C) : Prop :=
  D.mitosisProphase ∧ D.mitosisPrometaphase ∧
  D.mitosisMetaphase ∧ D.mitosisAnaphase ∧
  D.mitosisTelophase ∧ D.cytokinesis

theorem cell_division_closed_from_evidence
    {R : CellCycleRegulationPackage} {C : CheckpointControlPackage R}
    (D : CellDivisionPackage C) (E : CellDivisionEvidence D) :
    CellDivisionClosed D := by
  exact And.intro E.mitosisProphaseClosed
    (And.intro E.mitosisPrometaphaseClosed
      (And.intro E.mitosisMetaphaseClosed
        (And.intro E.mitosisAnaphaseClosed
          (And.intro E.mitosisTelophaseClosed
            E.cytokinesisClosed))))

end CellBiologyCellCycleLemmaCanonicalLaneLean
end HautevilleHouse