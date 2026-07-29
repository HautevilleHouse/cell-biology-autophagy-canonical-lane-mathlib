import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure mTORSignalingIntegratorPackage where
  aminoAcidSensing : Prop
  energyStatusDetection : Prop
  growthFactorSignaling : Prop
  stressResponseIntegration : Prop
  tORC1ActivityRegulation : Prop
  autophagySuppressionViaULK1 : Prop

structure mTORSignalingIntegratorEvidence (M : mTORSignalingIntegratorPackage) where
  aminoAcidSensingClosed : M.aminoAcidSensing
  energyStatusDetectionClosed : M.energyStatusDetection
  growthFactorSignalingClosed : M.growthFactorSignaling
  stressResponseIntegrationClosed : M.stressResponseIntegration
  tORC1ActivityRegulationClosed : M.tORC1ActivityRegulation
  autophagySuppressionViaULK1Closed : M.autophagySuppressionViaULK1

def mTORSignalingIntegratorClosed (M : mTORSignalingIntegratorPackage) : Prop :=
  M.aminoAcidSensing ∧ M.energyStatusDetection ∧ M.growthFactorSignaling ∧
  M.stressResponseIntegration ∧ M.tORC1ActivityRegulation ∧ M.autophagySuppressionViaULK1

theorem mtor_signaling_integrator_closed_from_evidence
    (M : mTORSignalingIntegratorPackage) (E : mTORSignalingIntegratorEvidence M) :
    mTORSignalingIntegratorClosed M := by
  exact And.intro E.aminoAcidSensingClosed
    (And.intro E.energyStatusDetectionClosed
      (And.intro E.growthFactorSignalingClosed
        (And.intro E.stressResponseIntegrationClosed
          (And.intro E.tORC1ActivityRegulationClosed E.autophagySuppressionViaULK1Closed))))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse