import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyAdmittedObject where
  cellType : Type
  starvationSignal : Prop
  phagophoreFormation : Prop
  autophagosomeMaturation : Prop
  fusionWithLysosome : Prop
  degradationCompleted : Prop
  conclusion : degradationCompleted

structure AutophagyAdmissibleClass where
  object : AutophagyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def autophagyAdmittedClosure (A : AutophagyAdmissibleClass) : Prop :=
  AutophagyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.degradationCompleted

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse