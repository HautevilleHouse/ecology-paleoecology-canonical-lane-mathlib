import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  birthDeathRates : Type u
  carryingCapacity : Type v
  migrationFlux : Type w
  trophicInteractions : Type x
  logisticGrowthModeled : Prop
  bioticPotentialFinite : Prop
  equilibriumStable : Prop
  extinctionRiskBounded : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticGrowthModeledClosed : P.logisticGrowthModeled
  bioticPotentialFiniteClosed : P.bioticPotentialFinite
  equilibriumStableClosed : P.equilibriumStable
  extinctionRiskBoundedClosed : P.extinctionRiskBounded

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticGrowthModeled ∧ P.bioticPotentialFinite ∧ P.equilibriumStable ∧ P.extinctionRiskBounded

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (Ev : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro Ev.logisticGrowthModeledClosed
    (And.intro Ev.bioticPotentialFiniteClosed
      (And.intro Ev.equilibriumStableClosed Ev.extinctionRiskBoundedClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse