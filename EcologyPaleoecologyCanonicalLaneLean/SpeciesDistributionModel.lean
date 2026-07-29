import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure SpeciesDistributionModel where
  nicheParameters : Type
  dispersalKernel : Type
  bioticInteractions : Type
  currentDistribution : Prop
  paleoDistribution : Prop
  futureProjection : Prop

def SpeciesDistributionClosed (M : SpeciesDistributionModel) : Prop :=
  M.currentDistribution ∧ M.paleoDistribution ∧ M.futureProjection

structure SpeciesDistributionEvidence (M : SpeciesDistributionModel) where
  currentDistributionClosed : M.currentDistribution
  paleoDistributionClosed : M.paleoDistribution
  futureProjectionClosed : M.futureProjection

theorem species_distribution_closed_from_evidence (M : SpeciesDistributionModel) (E : SpeciesDistributionEvidence M) :
    SpeciesDistributionClosed M := by
  exact And.intro E.currentDistributionClosed (And.intro E.paleoDistributionClosed E.futureProjectionClosed)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse
