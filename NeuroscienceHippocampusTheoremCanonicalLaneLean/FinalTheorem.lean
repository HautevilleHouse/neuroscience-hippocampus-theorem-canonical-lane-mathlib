import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceHippocampusTheoremCanonicalLaneLean.BridgeLemmas
import NeuroscienceHippocampusTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

def ConstrainedHippocampusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hippocampus_endgame (A : AdmissibleClass) :
    ConstrainedHippocampusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
