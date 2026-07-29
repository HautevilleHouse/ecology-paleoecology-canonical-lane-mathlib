import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PaleoecologyAdmittedObject where
  location : String
  timePeriod : String
  ecosystemType : String
  evidenceSources : List String
  conclusions : List String
  endpointSatisfied : Prop

structure PaleoecologyAdmissibleClass where
  object : PaleoecologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : PaleoecologyAdmissibleClass) : Prop :=
  A.object.endpointSatisfied ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse