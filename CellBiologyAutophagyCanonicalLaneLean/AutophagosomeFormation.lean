import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagosomeFormationPackage where
  membraneExpansion : Prop
  cargoEngulfment : Prop
  closureFusion : Prop

structure AutophagosomeFormationEvidence (F : AutophagosomeFormationPackage) where
  membraneExpansionClosed : F.membraneExpansion
  cargoEngulfmentClosed : F.cargoEngulfment
  closureFusionClosed : F.closureFusion

def AutophagosomeFormationClosed (F : AutophagosomeFormationPackage) : Prop :=
  F.membraneExpansion ∧ F.cargoEngulfment ∧ F.closureFusion

theorem autophagosome_formation_closed_from_evidence (F : AutophagosomeFormationPackage) (E : AutophagosomeFormationEvidence F) : AutophagosomeFormationClosed F := by
  exact And.intro E.membraneExpansionClosed (And.intro E.cargoEngulfmentClosed E.closureFusionClosed)

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse