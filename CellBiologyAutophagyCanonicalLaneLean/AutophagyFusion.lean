import HautevilleHouse.AutophagyCanonicalLaneLean.AutophagyElongation

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure AutophagyFusionPackage {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} (E : AutophagyElongationPackage N) where
  autophagosomeLysosomeFusion : Prop
  acidification : Prop
  autophagosomeLysosomeFusionEvidence : autophagosomeLysosomeFusion
  acidificationEvidence : acidification

structure AutophagyFusionEvidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} (F : AutophagyFusionPackage E) where
  autophagosomeLysosomeFusionClosed : F.autophagosomeLysosomeFusion
  acidificationClosed : F.acidification

def AutophagyFusionClosed {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} (F : AutophagyFusionPackage E) : Prop :=
  F.autophagosomeLysosomeFusion ∧ F.acidification

theorem autophagy_fusion_closed_from_evidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} (F : AutophagyFusionPackage E) (Ev : AutophagyFusionEvidence F) : AutophagyFusionClosed F := by
  exact And.intro Ev.autophagosomeLysosomeFusionClosed Ev.acidificationClosed

end AutophagyCanonicalLaneLean
end HautevilleHouse
