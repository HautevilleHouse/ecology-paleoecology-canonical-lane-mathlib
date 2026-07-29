import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure ExtinctionEvent where
  boundaryLayer : Type
  speciesTurnover : Prop
  environmentalTrigger : Prop
  recoveryInterval : Prop

structure ExtinctionEvidence (E : ExtinctionEvent) where
  boundaryLayerClosed : E.boundaryLayer
  speciesTurnoverClosed : E.speciesTurnover
  environmentalTriggerClosed : E.environmentalTrigger
  recoveryIntervalClosed : E.recoveryInterval

def ExtinctionClosed (E : ExtinctionEvent) : Prop :=
  E.boundaryLayer ∧ E.speciesTurnover ∧ E.environmentalTrigger ∧ E.recoveryInterval

theorem extinction_closed_from_evidence (E : ExtinctionEvent) (Ev : ExtinctionEvidence E) :
    ExtinctionClosed E := by
  exact And.intro Ev.boundaryLayerClosed (And.intro Ev.speciesTurnoverClosed (And.intro Ev.environmentalTriggerClosed Ev.recoveryIntervalClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse