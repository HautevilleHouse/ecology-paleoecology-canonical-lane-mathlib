import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure StratigraphicLayer where
  depthInterval : ℝ × ℝ
  ageEstimate : ℝ
  lithology : String
  fossilAssemblage : List String
  depositionalEnvironment : String

structure StratigraphicLayerPackage where
  layers : List StratigraphicLayer
  stratigraphicOrder : Prop
  chronologicalContinuity : Prop
  layerBoundariesDefined : Prop

structure StratigraphicLayerEvidence (S : StratigraphicLayerPackage) where
  stratigraphicOrderClosed : S.stratigraphicOrder
  chronologicalContinuityClosed : S.chronologicalContinuity
  layerBoundariesDefinedClosed : S.layerBoundariesDefined

def StratigraphicLayerClosed (S : StratigraphicLayerPackage) : Prop :=
  S.stratigraphicOrder ∧ S.chronologicalContinuity ∧ S.layerBoundariesDefined

theorem stratigraphic_layer_closed_from_evidence (S : StratigraphicLayerPackage) (E : StratigraphicLayerEvidence S) : StratigraphicLayerClosed S := by
  exact And.intro E.stratigraphicOrderClosed (And.intro E.chronologicalContinuityClosed E.layerBoundariesDefinedClosed)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse