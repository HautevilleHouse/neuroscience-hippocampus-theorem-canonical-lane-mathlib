import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HebbianPlasticityRule where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  weightUpdateRule : Prop
  stabilizationMechanism : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityRule) where
  weightUpdateRule_closed : H.weightUpdateRule
  stabilizationMechanism_closed : H.stabilizationMechanism
  longTermPotentiation_closed : H.longTermPotentiation
  longTermDepression_closed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityRule) : Prop :=
  H.weightUpdateRule ∧ H.stabilizationMechanism ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityRule) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.weightUpdateRule_closed
    (And.intro E.stabilizationMechanism_closed
      (And.intro E.longTermPotentiation_closed E.longTermDepression_closed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
