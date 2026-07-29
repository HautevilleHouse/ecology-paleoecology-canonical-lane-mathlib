import canonicalLaneMathlib.AdmissibleClass
import EcologyPaleoecologyCanonicalLaneLean.PaleoecologyAdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

def gateClosed (A : PaleoecologyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : PaleoecologyAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse