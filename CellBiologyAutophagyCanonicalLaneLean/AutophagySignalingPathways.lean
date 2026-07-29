import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure SignalingPathwaysPackage where
  mtorc1Inhibition : Prop
  ampkActivation : Prop
  ulk1ComplexFormation : Prop
  pi3pGeneration : Prop

structure SignalingPathwaysEvidence (S : SignalingPathwaysPackage) where
  mtorc1InhibitionClosed : S.mtorc1Inhibition
  ampkActivationClosed : S.ampkActivation
  ulk1ComplexFormationClosed : S.ulk1ComplexFormation
  pi3pGenerationClosed : S.pi3pGeneration

def SignalingPathwaysClosed (S : SignalingPathwaysPackage) : Prop :=
  S.mtorc1Inhibition ∧ S.ampkActivation ∧ S.ulk1ComplexFormation ∧ S.pi3pGeneration

theorem signaling_pathways_closed_from_evidence (S : SignalingPathwaysPackage) (E : SignalingPathwaysEvidence S) : SignalingPathwaysClosed S := by
  exact And.intro E.mtorc1InhibitionClosed (And.intro E.ampkActivationClosed (And.intro E.ulk1ComplexFormationClosed E.pi3pGenerationClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse