import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyCanonicalLaneLean.AutophagyPathwayEvidence

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyDynamicsPackage {A : AdmissibleClass} (R : AutophagyReceptorPackage A) where
  fluxOscillation : Prop
  stressResponse : Prop
  nutrientSensing : Prop
  qualityControl : Prop

structure AutophagyDynamicsEvidence {A : AdmissibleClass} {R : AutophagyReceptorPackage A}
    (D : AutophagyDynamicsPackage R) where
  fluxOscillationClosed : D.fluxOscillation
  stressResponseClosed : D.stressResponse
  nutrientSensingClosed : D.nutrientSensing
  qualityControlClosed : D.qualityControl

def AutophagyDynamicsClosed {A : AdmissibleClass} {R : AutophagyReceptorPackage A}
    (D : AutophagyDynamicsPackage R) : Prop :=
  D.fluxOscillation ∧ D.stressResponse ∧ D.nutrientSensing ∧ D.qualityControl

theorem autophagy_dynamics_closed_from_evidence
    {A : AdmissibleClass} {R : AutophagyReceptorPackage A}
    (D : AutophagyDynamicsPackage R) (E : AutophagyDynamicsEvidence D) :
    AutophagyDynamicsClosed D := by
  exact And.intro E.fluxOscillationClosed
    (And.intro E.stressResponseClosed
      (And.intro E.nutrientSensingClosed E.qualityControlClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse