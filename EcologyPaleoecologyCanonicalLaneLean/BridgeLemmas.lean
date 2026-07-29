import canonicalLaneMathlib.AdmissibleClass
import EcologyPaleoecologyCanonicalLaneLean.PaleoecologyAdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

def bridgeClosed (A : PaleoecologyAdmissibleClass) : Prop :=
  A.object.endpointSatisfied

theorem bridge_from_admissible_class (A : PaleoecologyAdmissibleClass) : bridgeClosed A := by
  exact A.object.endpointSatisfied

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse