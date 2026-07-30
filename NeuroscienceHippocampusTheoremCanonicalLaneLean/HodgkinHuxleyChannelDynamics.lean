import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  sodiumChannelState : Prop
  potassiumChannelState : Prop
  leakChannelState : Prop
  activationVariables : Prop
  inactivationVariables : Prop
  membranePotentialDynamics : Prop

structure HodgkinHuxleyDynamicsEvidence (D : HodgkinHuxleyDynamicsPackage) where
  sodiumChannelStateClosed : D.sodiumChannelState
  potassiumChannelStateClosed : D.potassiumChannelState
  leakChannelStateClosed : D.leakChannelState
  activationVariablesClosed : D.activationVariables
  inactivationVariablesClosed : D.inactivationVariables
  membranePotentialDynamicsClosed : D.membranePotentialDynamics

def HodgkinHuxleyDynamicsClosed (D : HodgkinHuxleyDynamicsPackage) : Prop :=
  D.sodiumChannelState ∧ D.potassiumChannelState ∧ D.leakChannelState ∧
  D.activationVariables ∧ D.inactivationVariables ∧ D.membranePotentialDynamics

theorem hodgkin_huxley_dynamics_closed_from_evidence (D : HodgkinHuxleyDynamicsPackage)
    (E : HodgkinHuxleyDynamicsEvidence D) : HodgkinHuxleyDynamicsClosed D := by
  exact And.intro E.sodiumChannelStateClosed
    (And.intro E.potassiumChannelStateClosed
      (And.intro E.leakChannelStateClosed
        (And.intro E.activationVariablesClosed
          (And.intro E.inactivationVariablesClosed E.membranePotentialDynamicsClosed))))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse