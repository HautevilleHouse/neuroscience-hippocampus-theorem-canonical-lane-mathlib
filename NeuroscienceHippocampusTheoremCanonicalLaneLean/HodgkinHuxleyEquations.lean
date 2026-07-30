import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membraneCapacitance : Prop
  ionicCurrents : Prop
  gatingVariables : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEquationsEvidence (P : HodgkinHuxleyEquationsPackage) where
  membraneCapacitanceClosed : P.membraneCapacitance
  ionicCurrentsClosed : P.ionicCurrents
  gatingVariablesClosed : P.gatingVariables
  actionPotentialGenerationClosed : P.actionPotentialGeneration

def HodgkinHuxleyEquationsClosed (P : HodgkinHuxleyEquationsPackage) : Prop :=
  P.membraneCapacitance ∧ P.ionicCurrents ∧ P.gatingVariables ∧ P.actionPotentialGeneration

theorem hodgkin_huxley_equations_closed_from_evidence
    (P : HodgkinHuxleyEquationsPackage) (E : HodgkinHuxleyEquationsEvidence P) :
    HodgkinHuxleyEquationsClosed P := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.ionicCurrentsClosed
      (And.intro E.gatingVariablesClosed E.actionPotentialGenerationClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
