import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcologicalSuccession where
  stageName : String
  timeInterval : ℝ × ℝ
  dominantVegetation : String
  climateConditions : String
  disturbanceEvents : List String

structure SuccessionPackage where
  successionStages : List EcologicalSuccession
  chronologicalOrder : Prop
  directionalChange : Prop
  climaxCommunityDefined : Prop

structure SuccessionEvidence (S : SuccessionPackage) where
  chronologicalOrderClosed : S.chronologicalOrder
  directionalChangeClosed : S.directionalChange
  climaxCommunityDefinedClosed : S.climaxCommunityDefined

def SuccessionClosed (S : SuccessionPackage) : Prop :=
  S.chronologicalOrder ∧ S.directionalChange ∧ S.climaxCommunityDefined

theorem succession_closed_from_evidence (S : SuccessionPackage) (E : SuccessionEvidence S) : SuccessionClosed S := by
  exact And.intro E.chronologicalOrderClosed (And.intro E.directionalChangeClosed E.climaxCommunityDefinedClosed)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse