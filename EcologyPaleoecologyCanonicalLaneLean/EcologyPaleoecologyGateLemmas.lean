import canonicalLaneMathlib.AdmissibleClass
import EcologyPaleoecologyCanonicalLaneLean.EcologyPaleoecologyBridgeLemmas

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

def gateClosed (A : EcologyPaleoecologyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EcologyPaleoecologyAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse