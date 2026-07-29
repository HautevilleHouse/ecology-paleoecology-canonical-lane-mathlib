import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure StratigraphicLayer where
  lithology : Type
  fossilAssemblage : Type
  radiometricDate : Prop
  magneticPolarity : Prop

structure StratigraphicEvidence (L : StratigraphicLayer) where
  lithologyClosed : L.lithology
  fossilAssemblageClosed : L.fossilAssemblage
  radiometricDateClosed : L.radiometricDate
  magneticPolarityClosed : L.magneticPolarity

def StratigraphicClosed (L : StratigraphicLayer) : Prop :=
  L.lithology ∧ L.fossilAssemblage ∧ L.radiometricDate ∧ L.magneticPolarity

theorem stratigraphic_closed_from_evidence (L : StratigraphicLayer) (E : StratigraphicEvidence L) :
    StratigraphicClosed L := by
  exact And.intro E.lithologyClosed (And.intro E.fossilAssemblageClosed (And.intro E.radiometricDateClosed E.magneticPolarityClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse