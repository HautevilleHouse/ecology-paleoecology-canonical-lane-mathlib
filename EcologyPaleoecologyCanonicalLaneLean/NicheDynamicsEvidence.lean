import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure NicheDynamicsEvidence where
  fundamentalNiche : Prop
  realizedNiche : Prop
  nicheConservatism : Prop
  nicheEvolution : Prop
  fundamentalNicheTerm : fundamentalNiche
  realizedNicheTerm : realizedNiche
  nicheConservatismTerm : nicheConservatism
  nicheEvolutionTerm : nicheEvolution

def NicheDynamicsClosed (N : NicheDynamicsEvidence) : Prop :=
  N.fundamentalNiche ∧ N.realizedNiche ∧ N.nicheConservatism ∧ N.nicheEvolution

theorem niche_dynamics_closed_from_evidence (N : NicheDynamicsEvidence)
    (E : NicheDynamicsEvidence) : NicheDynamicsClosed N := by
  exact And.intro E.fundamentalNicheTerm
    (And.intro E.realizedNicheTerm
      (And.intro E.nicheConservatismTerm E.nicheEvolutionTerm))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse