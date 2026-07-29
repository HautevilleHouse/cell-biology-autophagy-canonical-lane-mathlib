import HautevilleHouse.AutophagyCanonicalLaneLean.AutophagyFusion

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure AutophagyDegradationPackage {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} (F : AutophagyFusionPackage E) where
  hydrolaseActivity : Prop
  nutrientRecycling : Prop
  hydrolaseActivityEvidence : hydrolaseActivity
  nutrientRecyclingEvidence : nutrientRecycling

structure AutophagyDegradationEvidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} {F : AutophagyFusionPackage E} (D : AutophagyDegradationPackage F) where
  hydrolaseActivityClosed : D.hydrolaseActivity
  nutrientRecyclingClosed : D.nutrientRecycling

def AutophagyDegradationClosed {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} {F : AutophagyFusionPackage E} (D : AutophagyDegradationPackage F) : Prop :=
  D.hydrolaseActivity ∧ D.nutrientRecycling

theorem autophagy_degradation_closed_from_evidence {A : AutophagyAdmissibleClass} {I : AutophagyInductionPackage A} {N : AutophagyNucleationPackage I} {E : AutophagyElongationPackage N} {F : AutophagyFusionPackage E} (D : AutophagyDegradationPackage F) (Ev : AutophagyDegradationEvidence D) : AutophagyDegradationClosed D := by
  exact And.intro Ev.hydrolaseActivityClosed Ev.nutrientRecyclingClosed

end AutophagyCanonicalLaneLean
end HautevilleHouse
