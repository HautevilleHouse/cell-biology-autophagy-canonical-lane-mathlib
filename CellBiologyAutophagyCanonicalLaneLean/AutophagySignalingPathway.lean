import canonicalLaneMathlib.AdmissibleClass
import CellBiologyAutophagyCanonicalLaneLean.AutophagyFinalTheorem

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagySignalingPathwayPackage where
  nutrientSensor : Type u
  energySensor : Type v
  ulk1Complex : Prop
  mtorc1Activity : Prop
  ampkActivity : Prop
  initiationSignal : Prop

structure AutophagySignalingPathwayEvidence (P : AutophagySignalingPathwayPackage) where
  nutrientSensorClosed : P.nutrientSensor
  energySensorClosed : P.energySensor
  ulk1ComplexClosed : P.ulk1Complex
  mtorc1ActivityClosed : P.mtorc1Activity
  ampkActivityClosed : P.ampkActivity
  initiationSignalClosed : P.initiationSignal

def AutophagySignalingPathwayClosed (P : AutophagySignalingPathwayPackage) : Prop :=
  P.nutrientSensor ∧ P.energySensor ∧ P.ulk1Complex ∧ P.mtorc1Activity ∧ P.ampkActivity ∧ P.initiationSignal

theorem autophagy_signaling_pathway_closed_from_evidence (P : AutophagySignalingPathwayPackage)
    (E : AutophagySignalingPathwayEvidence P) : AutophagySignalingPathwayClosed P := by
  exact And.intro E.nutrientSensorClosed (And.intro E.energySensorClosed
    (And.intro E.ulk1ComplexClosed (And.intro E.mtorc1ActivityClosed
      (And.intro E.ampkActivityClosed E.initiationSignalClosed))))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse