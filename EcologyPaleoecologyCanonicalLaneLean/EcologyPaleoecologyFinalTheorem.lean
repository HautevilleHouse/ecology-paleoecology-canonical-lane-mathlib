import canonicalLaneMathlib.AdmissibleClass
import EcologyPaleoecologyCanonicalLaneLean.EcologyPaleoecologyGateLemmas

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

def ConstrainedEcologyPaleoecologyClosure (A : EcologyPaleoecologyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecology_paleoecology_endgame (A : EcologyPaleoecologyAdmissibleClass) :
    ConstrainedEcologyPaleoecologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse