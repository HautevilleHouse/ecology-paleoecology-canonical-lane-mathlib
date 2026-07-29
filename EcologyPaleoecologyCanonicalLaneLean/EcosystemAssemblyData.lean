import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcosystemAssemblyData where
  taxonPools : Type u
  dispersalLimits : Type v
  bioticInteractions : Type w
  assemblyRules : Prop
  poolDefined : Prop
  limitsDefined : Prop
  interactionsDefined : Prop
  poolDefinedTerm : poolDefined
  limitsDefinedTerm : limitsDefined
  interactionsDefinedTerm : interactionsDefined

structure EcosystemAssemblyEvidence (A : EcosystemAssemblyData) where
  assemblyRulesClosed : A.assemblyRules
  poolDefinedClosed : A.poolDefined
  limitsDefinedClosed : A.limitsDefined
  interactionsDefinedClosed : A.interactionsDefined

def EcosystemAssemblyClosed (A : EcosystemAssemblyData) : Prop :=
  A.assemblyRules ∧ A.poolDefined ∧ A.limitsDefined ∧ A.interactionsDefined

theorem ecosystem_assembly_closed_from_evidence (A : EcosystemAssemblyData)
    (E : EcosystemAssemblyEvidence A) : EcosystemAssemblyClosed A := by
  exact And.intro E.assemblyRulesClosed
    (And.intro E.poolDefinedClosed
      (And.intro E.limitsDefinedClosed E.interactionsDefinedClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse