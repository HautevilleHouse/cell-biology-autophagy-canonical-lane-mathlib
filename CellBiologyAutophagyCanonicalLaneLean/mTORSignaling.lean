import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure mTORSignalingPackage (A : AdmissibleClass) where
  nutrientSensing : Prop
  growthFactorSignaling : Prop
  energyStatus : Prop
  mTORC1Activity : Prop
  ULK1ComplexRegulation : Prop

structure mTORSignalingEvidence {A : AdmissibleClass} (M : mTORSignalingPackage A) where
  nutrientSensingClosed : M.nutrientSensing
  growthFactorSignalingClosed : M.growthFactorSignaling
  energyStatusClosed : M.energyStatus
  mTORC1ActivityClosed : M.mTORC1Activity
  ULK1ComplexRegulationClosed : M.ULK1ComplexRegulation

def mTORSignalingClosed {A : AdmissibleClass} (M : mTORSignalingPackage A) : Prop :=
  M.nutrientSensing ∧ M.growthFactorSignaling ∧ M.energyStatus ∧ M.mTORC1Activity ∧ M.ULK1ComplexRegulation

theorem mtor_signaling_closed_from_evidence {A : AdmissibleClass} (M : mTORSignalingPackage A) (E : mTORSignalingEvidence M) : mTORSignalingClosed M :=
  And.intro E.nutrientSensingClosed (And.intro E.growthFactorSignalingClosed (And.intro E.energyStatusClosed (And.intro E.mTORC1ActivityClosed E.ULK1ComplexRegulationClosed)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse