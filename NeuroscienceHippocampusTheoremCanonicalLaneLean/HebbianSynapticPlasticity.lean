import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  synapticWeightUpdate : Prop

structure HebbianSynapticPlasticityEvidence (P : HebbianSynapticPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : P.spikeTimingDependentPlasticity
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  synapticWeightUpdateClosed : P.synapticWeightUpdate

def HebbianSynapticPlasticityClosed (P : HebbianSynapticPlasticityPackage) : Prop :=
  P.spikeTimingDependentPlasticity ∧ P.longTermPotentiation ∧
  P.longTermDepression ∧ P.synapticWeightUpdate

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (P : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence P) :
    HebbianSynapticPlasticityClosed P := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.longTermDepressionClosed E.synapticWeightUpdateClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
