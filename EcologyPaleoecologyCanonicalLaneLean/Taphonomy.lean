import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure TaphonomicProcess where
  burialEnvironment : Type
  decayRate : Prop
  transportDistance : Prop
  preservationBias : Prop

structure TaphonomicEvidence (T : TaphonomicProcess) where
  burialEnvironmentClosed : T.burialEnvironment
  decayRateClosed : T.decayRate
  transportDistanceClosed : T.transportDistance
  preservationBiasClosed : T.preservationBias

def TaphonomicClosed (T : TaphonomicProcess) : Prop :=
  T.burialEnvironment ∧ T.decayRate ∧ T.transportDistance ∧ T.preservationBias

theorem taphonomic_closed_from_evidence (T : TaphonomicProcess) (E : TaphonomicEvidence T) :
    TaphonomicClosed T := by
  exact And.intro E.burialEnvironmentClosed (And.intro E.decayRateClosed (And.intro E.transportDistanceClosed E.preservationBiasClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse