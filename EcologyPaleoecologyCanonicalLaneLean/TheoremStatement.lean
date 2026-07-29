import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPaleoecologyCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.EcologyPaleoecologyCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EcologyPaleoecologyCanonicalLaneLean.GateLemmas
import HautevilleHouse.EcologyPaleoecologyCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure EcologyPaleoecologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologyPaleoecologyAdmittedObject where
  space : EcologyPaleoecologySpace
  paleoecologicalClosed : Prop
  ecologicalCoherence : Prop
  fossilRecordModel : Type
  fossilRecordTopology : TopologicalSpace fossilRecordModel
  homeomorphicToFossilRecord : Prop
  conclusion : homeomorphicToFossilRecord

structure EcologyPaleoecologyEndgameState where
  object : EcologyPaleoecologyAdmittedObject

def EcologyPaleoecologyWitnessClosed (O : EcologyPaleoecologyAdmittedObject) : Prop :=
  O.homeomorphicToFossilRecord

theorem theorem_statement_available :
  ∀ A : AdmissibleClass, ConstrainedEcologyPaleoecologyClosure A :=
  constrained_ecology_paleoecology_endgame

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse