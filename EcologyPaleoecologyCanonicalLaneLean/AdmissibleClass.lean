import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PaleoAdmittedObject where
  fossilRecord : Type
  stratificationAge : Prop
  markerHorizons : Prop

structure AdmissibleClass where
  object : PaleoAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PaleoWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse