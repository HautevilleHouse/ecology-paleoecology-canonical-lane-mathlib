import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure PaleoClimateProxyPackage where
  proxyType : String
  measurementSeries : List (Nat × Float)
  calibrationEquation : String
  temporalResolution : Float
  proxyReliability : Prop
  calibrationValidated : Prop

structure PaleoClimateProxyEvidence (P : PaleoClimateProxyPackage) where
  proxyReliabilityClosed : P.proxyReliability
  calibrationValidatedClosed : P.calibrationValidated

def PaleoClimateProxyClosed (P : PaleoClimateProxyPackage) : Prop :=
  P.proxyReliability ∧ P.calibrationValidated

theorem paleo_climate_proxy_closed_from_evidence (P : PaleoClimateProxyPackage)
    (E : PaleoClimateProxyEvidence P) : PaleoClimateProxyClosed P :=
  And.intro E.proxyReliabilityClosed E.calibrationValidatedClosed

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse