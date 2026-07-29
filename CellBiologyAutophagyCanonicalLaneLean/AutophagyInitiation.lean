import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyInitiationPackage where
  starvationSignal : Prop
  ulkComplexAssembly : Prop
  phagophoreNucleation : Prop
  atg9VesicleRecruitment : Prop

structure AutophagyInitiationEvidence (I : AutophagyInitiationPackage) where
  starvationSignalClosed : I.starvationSignal
  ulkComplexAssemblyClosed : I.ulkComplexAssembly
  phagophoreNucleationClosed : I.phagophoreNucleation
  atg9VesicleRecruitmentClosed : I.atg9VesicleRecruitment

def AutophagyInitiationClosed (I : AutophagyInitiationPackage) : Prop :=
  I.starvationSignal ∧ I.ulkComplexAssembly ∧ I.phagophoreNucleation ∧ I.atg9VesicleRecruitment

theorem autophagy_initiation_closed_from_evidence (I : AutophagyInitiationPackage) (E : AutophagyInitiationEvidence I) : AutophagyInitiationClosed I := by
  exact And.intro E.starvationSignalClosed (And.intro E.ulkComplexAssemblyClosed (And.intro E.phagophoreNucleationClosed E.atg9VesicleRecruitmentClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse