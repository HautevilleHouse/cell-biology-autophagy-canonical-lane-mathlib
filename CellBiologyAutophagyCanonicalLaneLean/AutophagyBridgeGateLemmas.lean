import HautevilleHouse.AutophagyCanonicalLaneLean.AutophagyAdmissibleClass

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

def bridgeClosed (A : AutophagyAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AutophagyAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AutophagyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AutophagyAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end AutophagyCanonicalLaneLean
end HautevilleHouse
