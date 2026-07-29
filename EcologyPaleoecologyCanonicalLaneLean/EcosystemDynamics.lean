import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcosystemDynamics where
  trophicNetwork : Type
  energyFlow : Type
  nutrientCycling : Type
  succession : Prop
  disturbanceRegime : Prop
  resilience : Prop

def EcosystemDynamicsClosed (D : EcosystemDynamics) : Prop :=
  D.succession ∧ D.disturbanceRegime ∧ D.resilience

structure EcosystemDynamicsEvidence (D : EcosystemDynamics) where
  successionClosed : D.succession
  disturbanceRegimeClosed : D.disturbanceRegime
  resilienceClosed : D.resilience

theorem ecosystem_dynamics_closed_from_evidence (D : EcosystemDynamics) (E : EcosystemDynamicsEvidence D) :
    EcosystemDynamicsClosed D := by
  exact And.intro E.successionClosed (And.intro E.disturbanceRegimeClosed E.resilienceClosed)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse
