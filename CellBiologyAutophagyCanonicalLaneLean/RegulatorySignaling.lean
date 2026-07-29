import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure RegulatorySignalingPackage where
  mtorc1Inhibition : Prop
  ampkActivation : Prop
  beclin1Vps34Complex : Prop
  bcl2FamilyRegulation : Prop

structure RegulatorySignalingEvidence (R : RegulatorySignalingPackage) where
  mtorc1InhibitionClosed : R.mtorc1Inhibition
  ampkActivationClosed : R.ampkActivation
  beclin1Vps34ComplexClosed : R.beclin1Vps34Complex
  bcl2FamilyRegulationClosed : R.bcl2FamilyRegulation

def RegulatorySignalingClosed (R : RegulatorySignalingPackage) : Prop :=
  R.mtorc1Inhibition ∧ R.ampkActivation ∧ R.beclin1Vps34Complex ∧ R.bcl2FamilyRegulation

theorem regulatory_signaling_closed_from_evidence (R : RegulatorySignalingPackage) (E : RegulatorySignalingEvidence R) : RegulatorySignalingClosed R := by
  exact And.intro E.mtorc1InhibitionClosed (And.intro E.ampkActivationClosed (And.intro E.beclin1Vps34ComplexClosed E.bcl2FamilyRegulationClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse