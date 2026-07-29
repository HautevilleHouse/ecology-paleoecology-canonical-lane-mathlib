import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PaleoCommunityClosure where
  communityStructure : Prop
  speciesInteractions : Prop
  environmentalFilter : Prop
  dispersalAssembly : Prop
  communityStructureTerm : communityStructure
  speciesInteractionsTerm : speciesInteractions
  environmentalFilterTerm : environmentalFilter
  dispersalAssemblyTerm : dispersalAssembly

def PaleoCommunityClosed (P : PaleoCommunityClosure) : Prop :=
  P.communityStructure ∧ P.speciesInteractions ∧ P.environmentalFilter ∧ P.dispersalAssembly

theorem paleo_community_closed_from_evidence (P : PaleoCommunityClosure)
    (E : PaleoCommunityClosure) : PaleoCommunityClosed P := by
  exact And.intro E.communityStructureTerm
    (And.intro E.speciesInteractionsTerm
      (And.intro E.environmentalFilterTerm E.dispersalAssemblyTerm))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse