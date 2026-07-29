import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyAdmittedObject where
  pathway : Type
  pathwayTopology : TopologicalSpace pathway
  autophagyCompleted : Prop
  conclusion : autophagyCompleted

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.autophagyCompleted

theorem autophagy_witness_closed (O : AutophagyAdmittedObject) :
    AutophagyWitnessClosed O := O.conclusion

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse