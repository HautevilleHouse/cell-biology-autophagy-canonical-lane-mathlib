import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AtgProteinNetworkPackage where
  atg1UlkComplex : Prop
  atg9VesicleCycling : Prop
  atg12Conjugation : Prop
  atg8Lc3Lipidation : Prop
  atg2Atg18Complex : Prop

structure AtgProteinNetworkEvidence (N : AtgProteinNetworkPackage) where
  atg1UlkComplexClosed : N.atg1UlkComplex
  atg9VesicleCyclingClosed : N.atg9VesicleCycling
  atg12ConjugationClosed : N.atg12Conjugation
  atg8Lc3LipidationClosed : N.atg8Lc3Lipidation
  atg2Atg18ComplexClosed : N.atg2Atg18Complex

def AtgProteinNetworkClosed (N : AtgProteinNetworkPackage) : Prop :=
  N.atg1UlkComplex ∧ N.atg9VesicleCycling ∧ N.atg12Conjugation ∧ N.atg8Lc3Lipidation ∧ N.atg2Atg18Complex

theorem atg_protein_network_closed_from_evidence (N : AtgProteinNetworkPackage) (E : AtgProteinNetworkEvidence N) : AtgProteinNetworkClosed N := by
  exact And.intro E.atg1UlkComplexClosed (And.intro E.atg9VesicleCyclingClosed (And.intro E.atg12ConjugationClosed (And.intro E.atg8Lc3LipidationClosed E.atg2Atg18ComplexClosed)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse