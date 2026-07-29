import canonicalLaneMathlib.AdmissibleClass

/-!
# Autophagy Lysosomal Fusion Package

This module describes the fusion of autophagosome with lysosome and degradation.
-/

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyFusionPackage where
  hoppsTethering : Prop
  snareMediatedFusion : Prop
  acidification : Prop
  hydrolaseActivation : Prop
  degradationProductsRelease : Prop
  hoppsTetheringTerm : hoppsTethering
  snareMediatedFusionTerm : snareMediatedFusion
  acidificationTerm : acidification
  hydrolaseActivationTerm : hydrolaseActivation
  degradationProductsReleaseTerm : degradationProductsRelease

def AutophagyFusionClosed (F : AutophagyFusionPackage) : Prop :=
  F.hoppsTethering ∧ F.snareMediatedFusion ∧ F.acidification ∧
  F.hydrolaseActivation ∧ F.degradationProductsRelease

theorem autophagy_fusion_closed_from_evidence (F : AutophagyFusionPackage) :
    AutophagyFusionClosed F :=
  And.intro F.hoppsTetheringTerm
    (And.intro F.snareMediatedFusionTerm
      (And.intro F.acidificationTerm
        (And.intro F.hydrolaseActivationTerm F.degradationProductsReleaseTerm)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse