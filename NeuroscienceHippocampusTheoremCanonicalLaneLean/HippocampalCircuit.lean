import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure HippocampalCircuit where
  dentateGyrus : Type u
  ca3Region : Type v
  ca1Region : Type w
  subiculum : Type x
  entorhinalCortex : Type y
  trisynapticLoop : Prop
  patternSeparation : Prop
  patternCompletion : Prop
  thetaRhythm : Prop
  gammaOscillations : Prop

structure HippocampalCircuitEvidence (H : HippocampalCircuit) where
  trisynapticLoop_closed : H.trisynapticLoop
  patternSeparation_closed : H.patternSeparation
  patternCompletion_closed : H.patternCompletion
  thetaRhythm_closed : H.thetaRhythm
  gammaOscillations_closed : H.gammaOscillations

def HippocampalCircuitClosed (H : HippocampalCircuit) : Prop :=
  H.trisynapticLoop ∧ H.patternSeparation ∧ H.patternCompletion ∧ H.thetaRhythm ∧ H.gammaOscillations

theorem hippocampal_circuit_closed_from_evidence (H : HippocampalCircuit) (E : HippocampalCircuitEvidence H) : HippocampalCircuitClosed H := by
  exact And.intro E.trisynapticLoop_closed
    (And.intro E.patternSeparation_closed
      (And.intro E.patternCompletion_closed
        (And.intro E.thetaRhythm_closed E.gammaOscillations_closed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
