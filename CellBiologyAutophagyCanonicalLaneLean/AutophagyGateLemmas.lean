import canonicalLaneMathlib.GateLemmas
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

def gateClosed (A : AutophagyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AutophagyAdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse