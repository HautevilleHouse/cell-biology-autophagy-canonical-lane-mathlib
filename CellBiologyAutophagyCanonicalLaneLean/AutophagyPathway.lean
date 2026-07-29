import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyCanonicalLaneLean

structure AutophagyPathwayPackage (A : AdmissibleClass) where
  initiationSignals : Prop
  nucleationComplex : Prop
  elongationCompletion : Prop
  fusionWithLysosome : Prop
  degradationRecycling : Prop

structure AutophagyPathwayEvidence {A : AdmissibleClass} (P : AutophagyPathwayPackage A) where
  initiationSignalsClosed : P.initiationSignals
  nucleationComplexClosed : P.nucleationComplex
  elongationCompletionClosed : P.elongationCompletion
  fusionWithLysosomeClosed : P.fusionWithLysosome
  degradationRecyclingClosed : P.degradationRecycling

def AutophagyPathwayClosed {A : AdmissibleClass} (P : AutophagyPathwayPackage A) : Prop :=
  P.initiationSignals ∧ P.nucleationComplex ∧ P.elongationCompletion ∧ P.fusionWithLysosome ∧ P.degradationRecycling

theorem autophagy_pathway_closed_from_evidence {A : AdmissibleClass} (P : AutophagyPathwayPackage A) (E : AutophagyPathwayEvidence P) : AutophagyPathwayClosed P :=
  And.intro E.initiationSignalsClosed (And.intro E.nucleationComplexClosed (And.intro E.elongationCompletionClosed (And.intro E.fusionWithLysosomeClosed E.degradationRecyclingClosed)))

end CellBiologyAutophagyCanonicalLaneLean
end HautevilleHouse