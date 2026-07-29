import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure FossilAssemblagePackage where
  site : String
  stratum : Nat
  taxonCount : Nat
  abundanceData : List (String × Nat)
  stratigraphicConsistency : Prop
  taphonomicControls : Prop

structure FossilAssemblageEvidence (P : FossilAssemblagePackage) where
  stratigraphicConsistencyClosed : P.stratigraphicConsistency
  taphonomicControlsClosed : P.taphonomicControls

def FossilAssemblageClosed (P : FossilAssemblagePackage) : Prop :=
  P.stratigraphicConsistency ∧ P.taphonomicControls

theorem fossil_assemblage_closed_from_evidence (P : FossilAssemblagePackage)
    (E : FossilAssemblageEvidence P) : FossilAssemblageClosed P :=
  And.intro E.stratigraphicConsistencyClosed E.taphonomicControlsClosed

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse