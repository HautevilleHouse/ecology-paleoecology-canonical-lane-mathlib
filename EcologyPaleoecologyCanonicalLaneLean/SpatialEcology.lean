import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure SpatialEcologyPackage where
  landscapeMosaic : Type u
  habitatPatchiness : Type v
  dispersalKernel : Type w
  metacommunityStructure : Type x
  landscapeDynamicsModeled : Prop
  patchConnectivityMeasured : Prop
  dispersalRangeBounded : Prop
  metacommunityEquilibrium : Prop

structure SpatialEcologyEvidence (S : SpatialEcologyPackage) where
  landscapeDynamicsModeledClosed : S.landscapeDynamicsModeled
  patchConnectivityMeasuredClosed : S.patchConnectivityMeasured
  dispersalRangeBoundedClosed : S.dispersalRangeBounded
  metacommunityEquilibriumClosed : S.metacommunityEquilibrium

def SpatialEcologyClosed (S : SpatialEcologyPackage) : Prop :=
  S.landscapeDynamicsModeled ∧ S.patchConnectivityMeasured ∧ S.dispersalRangeBounded ∧ S.metacommunityEquilibrium

theorem spatial_ecology_closed_from_evidence (S : SpatialEcologyPackage) (Ev : SpatialEcologyEvidence S) :
    SpatialEcologyClosed S := by
  exact And.intro Ev.landscapeDynamicsModeledClosed
    (And.intro Ev.patchConnectivityMeasuredClosed
      (And.intro Ev.dispersalRangeBoundedClosed Ev.metacommunityEquilibriumClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse