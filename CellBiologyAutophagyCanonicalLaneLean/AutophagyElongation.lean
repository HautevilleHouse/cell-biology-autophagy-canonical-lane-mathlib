import HautevilleHouse.AutophagyCanonicalLaneLean.AutophagyNucleation

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure AutophagyElongationPackage {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} (N : AutophagyNucleationPackage I) where
  membraneExpansion : Prop
  atgProteinConjugation : Prop
  membraneExpansionEvidence : membraneExpansion
  atgProteinConjugationEvidence : atgProteinConjugation

structure AutophagyElongationEvidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} (E : AutophagyElongationPackage N) where
  membraneExpansionClosed : E.membraneExpansion
  atgProteinConjugationClosed : E.atgProteinConjugation

def AutophagyElongationClosed {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} (E : AutophagyElongationPackage N) : Prop :=
  E.membraneExpansion ∧ E.atgProteinConjugation

theorem autophagy_elongation_closed_from_evidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} (E : AutophagyElongationPackage N) (Ev : AutophagyElongationEvidence E) : AutophagyElongationClosed E := by
  exact And.intro Ev.membraneExpansionClosed Ev.atgProteinConjugationClosed

end AutophagyCanonicalLaneLean
end HautevilleHouse
