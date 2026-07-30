import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  populationActivityDynamics : Prop
  excitatoryInhibitoryBalance : Prop
  travelingWaves : Prop
  patternFormation : Prop

structure NeuralFieldTheoryEvidence (P : NeuralFieldTheoryPackage) where
  populationActivityDynamicsClosed : P.populationActivityDynamics
  excitatoryInhibitoryBalanceClosed : P.excitatoryInhibitoryBalance
  travelingWavesClosed : P.travelingWaves
  patternFormationClosed : P.patternFormation

def NeuralFieldTheoryClosed (P : NeuralFieldTheoryPackage) : Prop :=
  P.populationActivityDynamics ∧ P.excitatoryInhibitoryBalance ∧
  P.travelingWaves ∧ P.patternFormation

theorem neural_field_theory_closed_from_evidence
    (P : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence P) :
    NeuralFieldTheoryClosed P := by
  exact And.intro E.populationActivityDynamicsClosed
    (And.intro E.excitatoryInhibitoryBalanceClosed
      (And.intro E.travelingWavesClosed E.patternFormationClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
