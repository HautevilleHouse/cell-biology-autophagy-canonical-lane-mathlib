import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure CargoRecognitionPackage where
  ubiquitinTagging : Prop
  receptorMediatedRecognition : Prop
  adaptorProteinBinding : Prop
  selectiveAutophagy : Prop

structure CargoRecognitionEvidence (C : CargoRecognitionPackage) where
  ubiquitinTaggingClosed : C.ubiquitinTagging
  receptorMediatedRecognitionClosed : C.receptorMediatedRecognition
  adaptorProteinBindingClosed : C.adaptorProteinBinding
  selectiveAutophagyClosed : C.selectiveAutophagy

def CargoRecognitionClosed (C : CargoRecognitionPackage) : Prop :=
  C.ubiquitinTagging ∧ C.receptorMediatedRecognition ∧ C.adaptorProteinBinding ∧ C.selectiveAutophagy

theorem cargo_recognition_closed_from_evidence (C : CargoRecognitionPackage) (E : CargoRecognitionEvidence C) : CargoRecognitionClosed C := by
  exact And.intro E.ubiquitinTaggingClosed (And.intro E.receptorMediatedRecognitionClosed (And.intro E.adaptorProteinBindingClosed E.selectiveAutophagyClosed))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse