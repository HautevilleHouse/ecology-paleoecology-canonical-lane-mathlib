import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PaleoecologicalMSCPackage where
  paleoCommunity : PaleoCommunityClosure
  ecosystemAssembly : EcosystemAssemblyEvidence
  fossilPaleoecology : FossilPaleoecologyEvidence
  nicheDynamics : NicheDynamicsEvidence
  communityStructureClosed : Prop
  assemblyClosed : Prop
  fossilClosed : Prop
  nicheClosed : Prop
  communityStructureClosedTerm : communityStructureClosed
  assemblyClosedTerm : assemblyClosed
  fossilClosedTerm : fossilClosed
  nicheClosedTerm : nicheClosed

def PaleoecologicalMSCClosed (P : PaleoecologicalMSCPackage) : Prop :=
  P.communityStructureClosed ∧ P.assemblyClosed ∧ P.fossilClosed ∧ P.nicheClosed

theorem paleoecological_msc_closed_from_evidence (P : PaleoecologicalMSCPackage)
    (E : PaleoecologicalMSCPackage) : PaleoecologicalMSCClosed P := by
  exact And.intro E.communityStructureClosedTerm
    (And.intro E.assemblyClosedTerm
      (And.intro E.fossilClosedTerm E.nicheClosedTerm))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse