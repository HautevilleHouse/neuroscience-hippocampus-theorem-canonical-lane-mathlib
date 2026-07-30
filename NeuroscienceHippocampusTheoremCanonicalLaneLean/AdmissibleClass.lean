import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HippocampusAdmittedObject where
  neuronPopulation : Type
  synapticWeights : neuronPopulation -> neuronPopulation -> ℝ
  hebbianPlasticity : Prop
  placeFieldFormation : Prop
  conclusion : placeFieldFormation

structure AdmissibleClass where
  object : HippocampusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HippocampusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HippocampusWitnessClosed (O : HippocampusAdmittedObject) : Prop :=
  O.placeFieldFormation

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse