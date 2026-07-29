import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcosystemStatePackage where
  biomass : Type u
  nutrientPool : Type v
  speciesDiversity : Type w
  temperatureAnomaly : Type x
  stateDynamicsWellDefined : Prop
  biomassMeasurable : Prop
  nutrientPoolBalanced : Prop
  diversityStabilityRelation : Prop

structure EcosystemStateEvidence (E : EcosystemStatePackage) where
  stateDynamicsWellDefinedClosed : E.stateDynamicsWellDefined
  biomassMeasurableClosed : E.biomassMeasurable
  nutrientPoolBalancedClosed : E.nutrientPoolBalanced
  diversityStabilityRelationClosed : E.diversityStabilityRelation

def EcosystemStateClosed (E : EcosystemStatePackage) : Prop :=
  E.stateDynamicsWellDefined ∧ E.biomassMeasurable ∧ E.nutrientPoolBalanced ∧ E.diversityStabilityRelation

theorem ecosystem_state_closed_from_evidence (E : EcosystemStatePackage) (Ev : EcosystemStateEvidence E) :
    EcosystemStateClosed E := by
  exact And.intro Ev.stateDynamicsWellDefinedClosed
    (And.intro Ev.biomassMeasurableClosed
      (And.intro Ev.nutrientPoolBalancedClosed Ev.diversityStabilityRelationClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse