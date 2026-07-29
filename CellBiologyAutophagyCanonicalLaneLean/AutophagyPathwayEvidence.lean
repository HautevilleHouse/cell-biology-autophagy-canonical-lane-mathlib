import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyReceptorPackage (A : AdmissibleClass) where
  receptorActivation : Prop
  cargoRecruitment : Prop
  membraneElongation : Prop
  lysosomalFusion : Prop

structure AutophagyReceptorEvidence {A : AdmissibleClass} (P : AutophagyReceptorPackage A) where
  receptorActivationClosed : P.receptorActivation
  cargoRecruitmentClosed : P.cargoRecruitment
  membraneElongationClosed : P.membraneElongation
  lysosomalFusionClosed : P.lysosomalFusion

def AutophagyReceptorClosed {A : AdmissibleClass} (P : AutophagyReceptorPackage A) : Prop :=
  P.receptorActivation ∧ P.cargoRecruitment ∧ P.membraneElongation ∧ P.lysosomalFusion

theorem autophagy_receptor_closed_from_evidence
    {A : AdmissibleClass} (P : AutophagyReceptorPackage A)
    (E : AutophagyReceptorEvidence P) : AutophagyReceptorClosed P := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.cargoRecruitmentClosed
      (And.intro E.membraneElongationClosed E.lysosomalFusionClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse