import HautevilleHouse.AutophagyCanonicalLaneLean.AutophagyAdmissibleClass

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure AutophagyInductionPackage (A : AutophagyAdmissibleClass) where
  signalRecognition : Prop
  initiationComplexAssembly : Prop
  signalRecognitionEvidence : signalRecognition
  initiationComplexAssemblyEvidence : initiationComplexAssembly

structure AutophagyInductionEvidence (A : AutophagyAdmissibleClass) (I : AutophagyInductionPackage A) where
  signalRecognitionClosed : I.signalRecognition
  initiationComplexAssemblyClosed : I.initiationComplexAssembly

def AutophagyInductionClosed (A : AutophagyAdmissibleClass) (I : AutophagyInductionPackage A) : Prop :=
  I.signalRecognition ∧ I.initiationComplexAssembly

theorem autophagy_induction_closed_from_evidence (A : AutophagyAdmissibleClass) (I : AutophagyInductionPackage A) (E : AutophagyInductionEvidence A I) : AutophagyInductionClosed A I := by
  exact And.intro E.signalRecognitionClosed E.initiationComplexAssemblyClosed

end AutophagyCanonicalLaneLean
end HautevilleHouse
