import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AtgConjugationSystemsPackage where
  atg12Conjugation : Prop
  atg8Lipidation : Prop
  atg16lComplexScaffold : Prop
  ubiquitinLikeCascades : Prop

structure AtgConjugationSystemsEvidence (A : AtgConjugationSystemsPackage) where
  atg12ConjugationClosed : A.atg12Conjugation
  atg8LipidationClosed : A.atg8Lipidation
  atg16lComplexScaffoldClosed : A.atg16lComplexScaffold
  ubiquitinLikeCascadesClosed : A.ubiquitinLikeCascades

def AtgConjugationSystemsClosed (A : AtgConjugationSystemsPackage) : Prop :=
  A.atg12Conjugation ∧ A.atg8Lipidation ∧ A.atg16lComplexScaffold ∧ A.ubiquitinLikeCascades

theorem atg_conjugation_systems_closed_from_evidence (A : AtgConjugationSystemsPackage) (E : AtgConjugationSystemsEvidence A) : AtgConjugationSystemsClosed A := by
  exact And.intro E.atg12ConjugationClosed (And.intro E.atg8LipidationClosed (And.intro E.atg16lComplexScaffoldClosed E.ubiquitinLikeCascadesClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse