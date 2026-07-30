import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop
  synapticWeightUpdate : Prop
  calciumSignalingCascade : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  calciumSignalingCascadeClosed : H.calciumSignalingCascade

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependentPlasticity ∧
  H.synapticWeightUpdate ∧ H.calciumSignalingCascade

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed
      (And.intro E.spikeTimingDependentPlasticityClosed
        (And.intro E.synapticWeightUpdateClosed E.calciumSignalingCascadeClosed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse