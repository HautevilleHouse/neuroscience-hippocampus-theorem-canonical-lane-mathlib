import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membranePotential : Type u
  potassiumConductance : Type v
  sodiumConductance : Type w
  leakageConductance : Type x
  gatingVariables : Type y
  dvdt_formula : Prop
  dmdt_formula : Prop
  dhdt_formula : Prop
  dndt_formula : Prop
  parameter_set : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyEquations) where
  dvdt_formula_closed : H.dvdt_formula
  dmdt_formula_closed : H.dmdt_formula
  dhdt_formula_closed : H.dhdt_formula
  dndt_formula_closed : H.dndt_formula
  parameter_set_closed : H.parameter_set

def HodgkinHuxleyModelClosed (H : HodgkinHuxleyEquations) : Prop :=
  H.dvdt_formula ∧ H.dmdt_formula ∧ H.dhdt_formula ∧ H.dndt_formula ∧ H.parameter_set

theorem hodgkin_huxley_model_closed_from_evidence (H : HodgkinHuxleyEquations) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyModelClosed H := by
  exact And.intro E.dvdt_formula_closed
    (And.intro E.dmdt_formula_closed
      (And.intro E.dhdt_formula_closed
        (And.intro E.dndt_formula_closed E.parameter_set_closed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
