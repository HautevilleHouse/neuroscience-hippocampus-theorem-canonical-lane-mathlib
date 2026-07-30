import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HippocampalCircuitryPackage where
  dentateGyrus : Prop
  ca3Region : Prop
  ca1Region : Prop
  subiculum : Prop
  trisynapticCircuit : Prop

structure HippocampalCircuitryEvidence (P : HippocampalCircuitryPackage) where
  dentateGyrusClosed : P.dentateGyrus
  ca3RegionClosed : P.ca3Region
  ca1RegionClosed : P.ca1Region
  subiculumClosed : P.subiculum
  trisynapticCircuitClosed : P.trisynapticCircuit

def HippocampalCircuitryClosed (P : HippocampalCircuitryPackage) : Prop :=
  P.dentateGyrus ∧ P.ca3Region ∧ P.ca1Region ∧ P.subiculum ∧ P.trisynapticCircuit

theorem hippocampal_circuitry_closed_from_evidence
    (P : HippocampalCircuitryPackage) (E : HippocampalCircuitryEvidence P) :
    HippocampalCircuitryClosed P := by
  exact And.intro E.dentateGyrusClosed
    (And.intro E.ca3RegionClosed
      (And.intro E.ca1RegionClosed
        (And.intro E.subiculumClosed E.trisynapticCircuitClosed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
