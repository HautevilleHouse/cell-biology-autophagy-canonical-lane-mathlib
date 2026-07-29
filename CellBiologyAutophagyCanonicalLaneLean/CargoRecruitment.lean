import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure CargoRecruitmentPackage where
  receptorBinding : Prop
  adaptorProteinCoupling : Prop
  cargoSequesteredInPhagophore : Prop
  specificityEnsured : Prop

structure CargoRecruitmentEvidence (C : CargoRecruitmentPackage) where
  receptorBindingClosed : C.receptorBinding
  adaptorProteinCouplingClosed : C.adaptorProteinCoupling
  cargoSequesteredInPhagophoreClosed : C.cargoSequesteredInPhagophore
  specificityEnsuredClosed : C.specificityEnsured

def CargoRecruitmentClosed (C : CargoRecruitmentPackage) : Prop :=
  C.receptorBinding ∧ C.adaptorProteinCoupling ∧ C.cargoSequesteredInPhagophore ∧ C.specificityEnsured

theorem cargo_recruitment_closed_from_evidence (C : CargoRecruitmentPackage) (E : CargoRecruitmentEvidence C) : CargoRecruitmentClosed C := by
  exact And.intro E.receptorBindingClosed (And.intro E.adaptorProteinCouplingClosed (And.intro E.cargoSequesteredInPhagophoreClosed E.specificityEnsuredClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse