import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyRegulationPackage where
  mtorc1Inhibition : Prop
  ampkActivation : Prop
  ulk1ComplexPhosphorylation : Prop
  transcriptionFactorEB : Prop

structure AutophagyRegulationEvidence (R : AutophagyRegulationPackage) where
  mtorc1InhibitionClosed : R.mtorc1Inhibition
  ampkActivationClosed : R.ampkActivation
  ulk1ComplexPhosphorylationClosed : R.ulk1ComplexPhosphorylation
  transcriptionFactorEBClosed : R.transcriptionFactorEB

def AutophagyRegulationClosed (R : AutophagyRegulationPackage) : Prop :=
  R.mtorc1Inhibition ∧ R.ampkActivation ∧ R.ulk1ComplexPhosphorylation ∧ R.transcriptionFactorEB

theorem autophagy_regulation_closed_from_evidence (R : AutophagyRegulationPackage) (E : AutophagyRegulationEvidence R) : AutophagyRegulationClosed R := by
  exact And.intro E.mtorc1InhibitionClosed (And.intro E.ampkActivationClosed (And.intro E.ulk1ComplexPhosphorylationClosed E.transcriptionFactorEBClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse