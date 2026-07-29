import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcologyPaleoecologyAdmittedObject where
  ecosystemType : Type u
  temporalScale : Type v
  spatialScale : Type w
  ecologicalDataAvailable : Prop
  paleoecologicalRecordAvailable : Prop
  conclusion : Prop

structure EcologyPaleoecologyAdmissibleClass where
  object : EcologyPaleoecologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : EcologyPaleoecologyAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse