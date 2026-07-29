import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure ClimateProxy where
  iceCoreRecord : Type
  pollenAssemblage : Type
  stableIsotopeRatio : Prop
  atmosphericConcentration : Prop

structure ClimateEvidence (C : ClimateProxy) where
  iceCoreRecordClosed : C.iceCoreRecord
  pollenAssemblageClosed : C.pollenAssemblage
  stableIsotopeRatioClosed : C.stableIsotopeRatio
  atmosphericConcentrationClosed : C.atmosphericConcentration

def ClimateClosed (C : ClimateProxy) : Prop :=
  C.iceCoreRecord ∧ C.pollenAssemblage ∧ C.stableIsotopeRatio ∧ C.atmosphericConcentration

theorem climate_closed_from_evidence (C : ClimateProxy) (E : ClimateEvidence C) :
    ClimateClosed C := by
  exact And.intro E.iceCoreRecordClosed (And.intro E.pollenAssemblageClosed (And.intro E.stableIsotopeRatioClosed E.atmosphericConcentrationClosed))

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse