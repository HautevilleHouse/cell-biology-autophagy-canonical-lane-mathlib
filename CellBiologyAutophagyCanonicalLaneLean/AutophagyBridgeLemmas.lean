import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

def bridgeClosed (A : AutophagyAdmissibleClass) : Prop :=
  AutophagyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AutophagyAdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse