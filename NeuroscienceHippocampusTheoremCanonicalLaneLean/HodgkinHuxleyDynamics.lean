import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HodgkinHuxleyChannelDynamics where
  membranePotential : Type u
  gatingVariables : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakageCurrent : Prop
  capacitance : Prop
  nernstPotentials : Prop
  sodiumCurrentTerm : sodiumCurrent
  potassiumCurrentTerm : potassiumCurrent
  leakageCurrentTerm : leakageCurrent
  capacitanceTerm : capacitance
  nernstPotentialsTerm : nernstPotentials

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyChannelDynamics) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakageCurrentClosed : H.leakageCurrent
  capacitanceClosed : H.capacitance
  nernstPotentialsClosed : H.nernstPotentials

def HodgkinHuxleyClosed (H : HodgkinHuxleyChannelDynamics) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakageCurrent ∧ H.capacitance ∧ H.nernstPotentials

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyChannelDynamics)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumCurrentClosed
    (And.intro E.potassiumCurrentClosed
      (And.intro E.leakageCurrentClosed
        (And.intro E.capacitanceClosed E.nernstPotentialsClosed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse