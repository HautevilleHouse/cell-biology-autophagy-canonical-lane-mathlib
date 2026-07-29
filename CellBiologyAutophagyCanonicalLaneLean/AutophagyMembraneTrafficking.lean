import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure MembraneTraffickingPackage where
  phagophoreElongation : Prop
  atg9VesicleDelivery : Prop
  autophagosomeCompletion : Prop
  snareMediatedFusion : Prop

structure MembraneTraffickingEvidence (M : MembraneTraffickingPackage) where
  phagophoreElongationClosed : M.phagophoreElongation
  atg9VesicleDeliveryClosed : M.atg9VesicleDelivery
  autophagosomeCompletionClosed : M.autophagosomeCompletion
  snareMediatedFusionClosed : M.snareMediatedFusion

def MembraneTraffickingClosed (M : MembraneTraffickingPackage) : Prop :=
  M.phagophoreElongation ∧ M.atg9VesicleDelivery ∧ M.autophagosomeCompletion ∧ M.snareMediatedFusion

theorem membrane_trafficking_closed_from_evidence (M : MembraneTraffickingPackage) (E : MembraneTraffickingEvidence M) : MembraneTraffickingClosed M := by
  exact And.intro E.phagophoreElongationClosed (And.intro E.atg9VesicleDeliveryClosed (And.intro E.autophagosomeCompletionClosed E.snareMediatedFusionClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse