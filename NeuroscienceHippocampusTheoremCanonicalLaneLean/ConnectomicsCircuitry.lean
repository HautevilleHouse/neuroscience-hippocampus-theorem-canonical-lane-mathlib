import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HippocampalCircuitConnectivity where
  neuronPopulations : Type u
  synapticConnections : Type v
  entorhinalInput : Prop
  dentateGyrus : Prop
  ca3Region : Prop
  ca1Region : Prop
  subiculumOutput : Prop
  entorhinalInputTerm : entorhinalInput
  dentateGyrusTerm : dentateGyrus
  ca3RegionTerm : ca3Region
  ca1RegionTerm : ca1Region
  subiculumOutputTerm : subiculumOutput

structure ConnectomicsEvidence (C : HippocampalCircuitConnectivity) where
  entorhinalInputClosed : C.entorhinalInput
  dentateGyrusClosed : C.dentateGyrus
  ca3RegionClosed : C.ca3Region
  ca1RegionClosed : C.ca1Region
  subiculumOutputClosed : C.subiculumOutput

def HippocampalCircuitClosed (C : HippocampalCircuitConnectivity) : Prop :=
  C.entorhinalInput ∧ C.dentateGyrus ∧ C.ca3Region ∧ C.ca1Region ∧ C.subiculumOutput

theorem hippocampal_circuit_closed_from_evidence (C : HippocampalCircuitConnectivity)
    (E : ConnectomicsEvidence C) : HippocampalCircuitClosed C := by
  exact And.intro E.entorhinalInputClosed
    (And.intro E.dentateGyrusClosed
      (And.intro E.ca3RegionClosed
        (And.intro E.ca1RegionClosed E.subiculumOutputClosed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse