import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologyAdmittedObject where
  space : EcologySpace
  ecosystem : Prop
  paleoClimate : Prop
  speciesDiversity : Prop
  conclusion : ecosystem ∧ paleoClimate ∧ speciesDiversity

def EcologyWitnessClosed (O : EcologyAdmittedObject) : Prop :=
  O.conclusion

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse
