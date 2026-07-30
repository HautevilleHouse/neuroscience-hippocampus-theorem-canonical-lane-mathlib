import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure MemoryConsolidationPackage where
  longTermPotentiation : Prop
  synapticTagging : Prop
  systemsConsolidation : Prop
  replayMechanisms : Prop

structure MemoryConsolidationEvidence (M : MemoryConsolidationPackage) where
  longTermPotentiationClosed : M.longTermPotentiation
  synapticTaggingClosed : M.synapticTagging
  systemsConsolidationClosed : M.systemsConsolidation
  replayMechanismsClosed : M.replayMechanisms

def MemoryConsolidationClosed (M : MemoryConsolidationPackage) : Prop :=
  M.longTermPotentiation ∧ M.synapticTagging ∧ M.systemsConsolidation ∧ M.replayMechanisms

theorem memory_consolidation_closed_from_evidence
    (M : MemoryConsolidationPackage) (E : MemoryConsolidationEvidence M) :
    MemoryConsolidationClosed M := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.synapticTaggingClosed
      (And.intro E.systemsConsolidationClosed E.replayMechanismsClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse