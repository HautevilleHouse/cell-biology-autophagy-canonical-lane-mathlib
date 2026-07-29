import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure CargoRecognitionPackage where
  receptorBinding : Prop
  ubiquitinTagging : Prop
  adaptorRecruitment : Prop
  selectivityEnsured : Prop

structure CargoRecognitionEvidence (C : CargoRecognitionPackage) where
  receptorBindingClosed : C.receptorBinding
  ubiquitinTaggingClosed : C.ubiquitinTagging
  adaptorRecruitmentClosed : C.adaptorRecruitment
  selectivityEnsuredClosed : C.selectivityEnsured

def CargoRecognitionClosed (C : CargoRecognitionPackage) : Prop :=
  C.receptorBinding ∧ C.ubiquitinTagging ∧ C.adaptorRecruitment ∧ C.selectivityEnsured

theorem cargo_recognition_closed_from_evidence (C : CargoRecognitionPackage) (E : CargoRecognitionEvidence C) : CargoRecognitionClosed C := by
  exact And.intro E.receptorBindingClosed (And.intro E.ubiquitinTaggingClosed (And.intro E.adaptorRecruitmentClosed E.selectivityEnsuredClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse