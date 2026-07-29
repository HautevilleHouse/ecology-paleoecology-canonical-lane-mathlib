import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPaleoecologyCanonicalLaneLean

structure RadiometricDatingPackage where
  isotopeSystem : String
  parentIsotope : String
  daughterIsotope : String
  halfLife : ℝ
  measuredRatio : ℝ
  ageEstimate : ℝ
  uncertainty : ℝ
  decayEquationSatisfied : Prop
  initialConditionKnown : Prop

structure RadiometricDatingEvidence (D : RadiometricDatingPackage) where
  decayEquationSatisfiedClosed : D.decayEquationSatisfied
  initialConditionKnownClosed : D.initialConditionKnown

def RadiometricDatingClosed (D : RadiometricDatingPackage) : Prop :=
  D.decayEquationSatisfied ∧ D.initialConditionKnown

theorem radiometric_dating_closed_from_evidence (D : RadiometricDatingPackage) (E : RadiometricDatingEvidence D) : RadiometricDatingClosed D := by
  exact And.intro E.decayEquationSatisfiedClosed E.initialConditionKnownClosed

end EcologyPaleoecologyCanonicalLaneLean
end HautevilleHouse