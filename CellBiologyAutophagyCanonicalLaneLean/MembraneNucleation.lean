import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure MembraneNucleationPackage where
  phagophoreAssemblySite : Prop
  atg9VesicleRecruitment : Prop
  pi3pProduction : Prop
  membraneExtension : Prop

structure MembraneNucleationEvidence (M : MembraneNucleationPackage) where
  phagophoreAssemblySiteClosed : M.phagophoreAssemblySite
  atg9VesicleRecruitmentClosed : M.atg9VesicleRecruitment
  pi3pProductionClosed : M.pi3pProduction
  membraneExtensionClosed : M.membraneExtension

def MembraneNucleationClosed (M : MembraneNucleationPackage) : Prop :=
  M.phagophoreAssemblySite ∧ M.atg9VesicleRecruitment ∧ M.pi3pProduction ∧ M.membraneExtension

theorem membrane_nucleation_closed_from_evidence (M : MembraneNucleationPackage) (E : MembraneNucleationEvidence M) : MembraneNucleationClosed M := by
  exact And.intro E.phagophoreAssemblySiteClosed (And.intro E.atg9VesicleRecruitmentClosed (And.intro E.pi3pProductionClosed E.membraneExtensionClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse