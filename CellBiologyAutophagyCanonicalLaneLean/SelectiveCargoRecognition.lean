import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure SelectiveCargoRecognitionPackage where
  receptorIdentification : Prop
  cargoBinding : Prop
  adaptorRecruitment : Prop
  phagophoreTargeting : Prop
  ubiquitinDependent : Prop
  ubiquitinIndependent : Prop

structure SelectiveCargoRecognitionEvidence (S : SelectiveCargoRecognitionPackage) where
  receptorIdentificationClosed : S.receptorIdentification
  cargoBindingClosed : S.cargoBinding
  adaptorRecruitmentClosed : S.adaptorRecruitment
  phagophoreTargetingClosed : S.phagophoreTargeting
  ubiquitinDependentClosed : S.ubiquitinDependent
  ubiquitinIndependentClosed : S.ubiquitinIndependent

def SelectiveCargoRecognitionClosed (S : SelectiveCargoRecognitionPackage) : Prop :=
  S.receptorIdentification ∧ S.cargoBinding ∧ S.adaptorRecruitment ∧
  S.phagophoreTargeting ∧ S.ubiquitinDependent ∧ S.ubiquitinIndependent

theorem selective_cargo_recognition_closed_from_evidence
    (S : SelectiveCargoRecognitionPackage) (E : SelectiveCargoRecognitionEvidence S) :
    SelectiveCargoRecognitionClosed S := by
  exact And.intro E.receptorIdentificationClosed
    (And.intro E.cargoBindingClosed
      (And.intro E.adaptorRecruitmentClosed
        (And.intro E.phagophoreTargetingClosed
          (And.intro E.ubiquitinDependentClosed E.ubiquitinIndependentClosed))))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse