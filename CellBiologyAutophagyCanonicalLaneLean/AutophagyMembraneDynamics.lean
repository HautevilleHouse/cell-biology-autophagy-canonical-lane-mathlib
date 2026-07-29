import canonicalLaneMathlib.AdmissibleClass

/-!
# Autophagy Membrane Dynamics Package

This module models the membrane expansion and autophagosome formation.
-/

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyMembranePackage where
  atg9VesiclesSupply : Prop
  atg2Atg18LipidTransfer : Prop
  atg8Lipidation : Prop
  membraneExpansion : Prop
  cargoSequestration : Prop
  atg9VesiclesSupplyTerm : atg9VesiclesSupply
  atg2Atg18LipidTransferTerm : atg2Atg18LipidTransfer
  atg8LipidationTerm : atg8Lipidation
  membraneExpansionTerm : membraneExpansion
  cargoSequestrationTerm : cargoSequestration

def AutophagyMembraneClosed (M : AutophagyMembranePackage) : Prop :=
  M.atg9VesiclesSupply ∧ M.atg2Atg18LipidTransfer ∧ M.atg8Lipidation ∧
  M.membraneExpansion ∧ M.cargoSequestration

theorem autophagy_membrane_closed_from_evidence (M : AutophagyMembranePackage) :
    AutophagyMembraneClosed M :=
  And.intro M.atg9VesiclesSupplyTerm
    (And.intro M.atg2Atg18LipidTransferTerm
      (And.intro M.atg8LipidationTerm
        (And.intro M.membraneExpansionTerm M.cargoSequestrationTerm)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse