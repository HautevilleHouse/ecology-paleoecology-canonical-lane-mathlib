import canonicalLaneMathlib.AdmissibleClass
import EcologyPaleoecologyCanonicalLaneLean.BridgeLemmas
import EcologyPaleoecologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

def ConstrainedPaleoecologyClosure (A : PaleoecologyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_paleoecology_endgame (A : PaleoecologyAdmissibleClass) : ConstrainedPaleoecologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse