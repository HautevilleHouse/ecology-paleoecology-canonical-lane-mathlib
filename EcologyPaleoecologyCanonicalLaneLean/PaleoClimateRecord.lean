import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PaleoClimateRecord where
  temperatureProxy : Type
  precipitationProxy : Type
  co2Proxy : Type
  iceCoreData : Prop
  sedimentCoreData : Prop
  treeRingData : Prop
  isotopeData : Prop

def PaleoClimateClosed (R : PaleoClimateRecord) : Prop :=
  R.iceCoreData ∧ R.sedimentCoreData ∧ R.treeRingData ∧ R.isotopeData

structure PaleoClimateEvidence (R : PaleoClimateRecord) where
  iceCoreDataClosed : R.iceCoreData
  sedimentCoreDataClosed : R.sedimentCoreData
  treeRingDataClosed : R.treeRingData
  isotopeDataClosed : R.isotopeData

theorem paleo_climate_closed_from_evidence (R : PaleoClimateRecord) (E : PaleoClimateEvidence R) :
    PaleoClimateClosed R := by
  exact And.intro E.iceCoreDataClosed (And.intro E.sedimentCoreDataClosed (And.intro E.treeRingDataClosed E.isotopeDataClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse
