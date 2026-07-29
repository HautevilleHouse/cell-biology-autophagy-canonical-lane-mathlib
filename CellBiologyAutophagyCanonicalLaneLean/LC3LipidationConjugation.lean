import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure LC3LipidationConjugationPackage where
  atg7Activation : Prop
  atg3Conjugation : Prop
  atg12Conjugation : Prop
  atg16L1ComplexAssembly : Prop
  lC3Lipidation : Prop

def LC3LipidationConjugationClosed (L : LC3LipidationConjugationPackage) : Prop :=
  L.atg7Activation ∧ L.atg3Conjugation ∧ L.atg12Conjugation ∧
  L.atg16L1ComplexAssembly ∧ L.lC3Lipidation

structure LC3LipidationConjugationEvidence (L : LC3LipidationConjugationPackage) where
  atg7ActivationClosed : L.atg7Activation
  atg3ConjugationClosed : L.atg3Conjugation
  atg12ConjugationClosed : L.atg12Conjugation
  atg16L1ComplexAssemblyClosed : L.atg16L1ComplexAssembly
  lC3LipidationClosed : L.lC3Lipidation

theorem lc3_lipidation_conjugation_closed_from_evidence
    (L : LC3LipidationConjugationPackage) (E : LC3LipidationConjugationEvidence L) :
    LC3LipidationConjugationClosed L := by
  exact And.intro E.atg7ActivationClosed
    (And.intro E.atg3ConjugationClosed
      (And.intro E.atg12ConjugationClosed
        (And.intro E.atg16L1ComplexAssemblyClosed E.lC3LipidationClosed)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse