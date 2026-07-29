import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagosomeMaturationPackage where
  closedMembraneFormed : Prop
  cargoSequestration : Prop
  lc3Lipidation : Prop
  fusionWithLysosome : Prop
  degradationCompleted : Prop

structure AutophagosomeMaturationEvidence (M : AutophagosomeMaturationPackage) where
  closedMembraneFormedClosed : M.closedMembraneFormed
  cargoSequestrationClosed : M.cargoSequestration
  lc3LipidationClosed : M.lc3Lipidation
  fusionWithLysosomeClosed : M.fusionWithLysosome
  degradationCompletedClosed : M.degradationCompleted

def AutophagosomeMaturationClosed (M : AutophagosomeMaturationPackage) : Prop :=
  M.closedMembraneFormed ∧ M.cargoSequestration ∧ M.lc3Lipidation ∧ M.fusionWithLysosome ∧ M.degradationCompleted

theorem autophagosome_maturation_closed_from_evidence (M : AutophagosomeMaturationPackage) (E : AutophagosomeMaturationEvidence M) :
    AutophagosomeMaturationClosed M := by
  exact And.intro E.closedMembraneFormedClosed (And.intro E.cargoSequestrationClosed (And.intro E.lc3LipidationClosed (And.intro E.fusionWithLysosomeClosed E.degradationCompletedClosed)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse