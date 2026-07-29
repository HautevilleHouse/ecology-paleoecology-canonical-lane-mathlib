import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure FossilAssemblage where
  taxon : String
  abundance : ℕ
  ecologicalRole : String
  preservationQuality : String

structure FossilAssemblagePackage where
  assemblages : List FossilAssemblage
  diversityIndices : Prop
  taphonomicControls : Prop
  ecologicalInference : Prop

structure FossilAssemblageEvidence (F : FossilAssemblagePackage) where
  diversityIndicesClosed : F.diversityIndices
  taphonomicControlsClosed : F.taphonomicControls
  ecologicalInferenceClosed : F.ecologicalInference

def FossilAssemblageClosed (F : FossilAssemblagePackage) : Prop :=
  F.diversityIndices ∧ F.taphonomicControls ∧ F.ecologicalInference

theorem fossil_assemblage_closed_from_evidence (F : FossilAssemblagePackage) (E : FossilAssemblageEvidence F) : FossilAssemblageClosed F := by
  exact And.intro E.diversityIndicesClosed (And.intro E.taphonomicControlsClosed E.ecologicalInferenceClosed)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse