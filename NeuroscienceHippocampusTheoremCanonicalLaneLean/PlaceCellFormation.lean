import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure PlaceCellFormationPackage where
  spikeTimingDependentPlasticity : Prop
  rateCoding : Prop
  phasePrecession : Prop
  gridCellInteractions : Prop

structure PlaceCellFormationEvidence (P : PlaceCellFormationPackage) where
  spikeTimingDependentPlasticityClosed : P.spikeTimingDependentPlasticity
  rateCodingClosed : P.rateCoding
  phasePrecessionClosed : P.phasePrecession
  gridCellInteractionsClosed : P.gridCellInteractions

def PlaceCellFormationClosed (P : PlaceCellFormationPackage) : Prop :=
  P.spikeTimingDependentPlasticity ∧ P.rateCoding ∧ P.phasePrecession ∧ P.gridCellInteractions

theorem place_cell_formation_closed_from_evidence
    (P : PlaceCellFormationPackage) (E : PlaceCellFormationEvidence P) :
    PlaceCellFormationClosed P := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.rateCodingClosed
      (And.intro E.phasePrecessionClosed E.gridCellInteractionsClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse