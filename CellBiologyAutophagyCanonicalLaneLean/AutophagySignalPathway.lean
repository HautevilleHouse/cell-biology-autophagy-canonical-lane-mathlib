import canonicalLaneMathlib.AdmissibleClass

/-!
# Autophagy Signal Pathway Package

This module records the major signaling steps in autophagy induction and progression.
-/

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagySignalPackage where
  starvationSignalDetected : Prop
  mTorInhibition : Prop
  ulk1ComplexActivation : Prop
  pi3kc3ComplexActivation : Prop
  phagophoreNucleation : Prop
  starvationSignalDetectedTerm : starvationSignalDetected
  mTorInhibitionTerm : mTorInhibition
  ulk1ComplexActivationTerm : ulk1ComplexActivation
  pi3kc3ComplexActivationTerm : pi3kc3ComplexActivation
  phagophoreNucleationTerm : phagophoreNucleation

def AutophagySignalClosed (P : AutophagySignalPackage) : Prop :=
  P.starvationSignalDetected ∧ P.mTorInhibition ∧ P.ulk1ComplexActivation ∧
  P.pi3kc3ComplexActivation ∧ P.phagophoreNucleation

theorem autophagy_signal_closed_from_evidence (P : AutophagySignalPackage) :
    AutophagySignalClosed P :=
  And.intro P.starvationSignalDetectedTerm
    (And.intro P.mTorInhibitionTerm
      (And.intro P.ulk1ComplexActivationTerm
        (And.intro P.pi3kc3ComplexActivationTerm P.phagophoreNucleationTerm)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse