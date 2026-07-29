import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure FossilPaleoecologyPackage where
  fossilAssemblage : Type u
  ageModel : Type v
  taphonomicBias : Type w
  abundanceCurve : Prop
  stratigraphicResolution : Prop
  taphonomicBiasAssessed : Prop
  abundanceCurveTerm : abundanceCurve
  stratigraphicResolutionTerm : stratigraphicResolution
  taphonomicBiasAssessedTerm : taphonomicBiasAssessed

structure FossilPaleoecologyEvidence (F : FossilPaleoecologyPackage) where
  abundanceCurveClosed : F.abundanceCurve
  stratigraphicResolutionClosed : F.stratigraphicResolution
  taphonomicBiasAssessedClosed : F.taphonomicBiasAssessed

def FossilPaleoecologyClosed (F : FossilPaleoecologyPackage) : Prop :=
  F.abundanceCurve ∧ F.stratigraphicResolution ∧ F.taphonomicBiasAssessed

theorem fossil_paleoecology_closed_from_evidence (F : FossilPaleoecologyPackage)
    (E : FossilPaleoecologyEvidence F) : FossilPaleoecologyClosed F := by
  exact And.intro E.abundanceCurveClosed
    (And.intro E.stratigraphicResolutionClosed E.taphonomicBiasAssessedClosed)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse