import HautevilleHouse.AutophagyCanonicalLaneLean.AutophagyInduction

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure AutophagyNucleationPackage {A : AutophagyAdmissibleClass} (I : AutophagyInductionPackage A) where
  phagophoreNucleation : Prop
  membraneRecruitment : Prop
  phagophoreNucleationEvidence : phagophoreNucleation
  membraneRecruitmentEvidence : membraneRecruitment

structure AutophagyNucleationEvidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} (N : AutophagyNucleationPackage I) where
  phagophoreNucleationClosed : N.phagophoreNucleation
  membraneRecruitmentClosed : N.membraneRecruitment

def AutophagyNucleationClosed {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} (N : AutophagyNucleationPackage I) : Prop :=
  N.phagophoreNucleation ∧ N.membraneRecruitment

theorem autophagy_nucleation_closed_from_evidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} (N : AutophagyNucleationPackage I) (E : AutophagyNucleationEvidence N) : AutophagyNucleationClosed N := by
  exact And.intro E.phagophoreNucleationClosed E.membraneRecruitmentClosed

end AutophagyCanonicalLaneLean
end HautevilleHouse
