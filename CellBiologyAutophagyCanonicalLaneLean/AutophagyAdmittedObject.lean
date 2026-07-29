import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyAdmittedObject where
  cellType : Type
  autophagyInduction : Prop
  lc3bPuncta : Prop
  p62Degradation : Prop
  autophagicFlux : Prop
  conclusion : autophagicFlux

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.autophagicFlux

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse