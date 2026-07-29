import canonicalLaneMathlib.FinalTheorem
import HautevilleHouse.CellBiologyAutophagyCanonicalLaneLean.AutophagyBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

def ConstrainedAutophagyClosure (A : AutophagyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_autophagy_endgame (A : AutophagyAdmissibleClass) :
    ConstrainedAutophagyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse