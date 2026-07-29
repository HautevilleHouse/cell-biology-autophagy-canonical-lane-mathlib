import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyVsApoptosisCrossTalkPackage where
  beclin1Interaction : Prop
  bcl2FamilyRegulation : Prop
  caspaseActivation : Prop
  rosMediation : Prop
  decisionSwitch : Prop

structure AutophagyVsApoptosisCrossTalkEvidence (A : AutophagyVsApoptosisCrossTalkPackage) where
  beclin1InteractionClosed : A.beclin1Interaction
  bcl2FamilyRegulationClosed : A.bcl2FamilyRegulation
  caspaseActivationClosed : A.caspaseActivation
  rosMediationClosed : A.rosMediation
  decisionSwitchClosed : A.decisionSwitch

def AutophagyVsApoptosisCrossTalkClosed (A : AutophagyVsApoptosisCrossTalkPackage) : Prop :=
  A.beclin1Interaction ∧ A.bcl2FamilyRegulation ∧ A.caspaseActivation ∧
  A.rosMediation ∧ A.decisionSwitch

theorem autophagy_vs_apoptosis_cross_talk_closed_from_evidence
    (A : AutophagyVsApoptosisCrossTalkPackage) (E : AutophagyVsApoptosisCrossTalkEvidence A) :
    AutophagyVsApoptosisCrossTalkClosed A := by
  exact And.intro E.beclin1InteractionClosed
    (And.intro E.bcl2FamilyRegulationClosed
      (And.intro E.caspaseActivationClosed
        (And.intro E.rosMediationClosed E.decisionSwitchClosed)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse