import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure PlaceCellSpatialCodingPackage where
  placeFieldFormation : Prop
  remappingDynamics : Prop
  gridCellInteractions : Prop
  boundaryVectorCells : Prop
  hippocampalPlaceCode : Prop

structure PlaceCellSpatialCodingEvidence (P : PlaceCellSpatialCodingPackage) where
  placeFieldFormationClosed : P.placeFieldFormation
  remappingDynamicsClosed : P.remappingDynamics
  gridCellInteractionsClosed : P.gridCellInteractions
  boundaryVectorCellsClosed : P.boundaryVectorCells
  hippocampalPlaceCodeClosed : P.hippocampalPlaceCode

def PlaceCellSpatialCodingClosed (P : PlaceCellSpatialCodingPackage) : Prop :=
  P.placeFieldFormation ∧ P.remappingDynamics ∧ P.gridCellInteractions ∧
  P.boundaryVectorCells ∧ P.hippocampalPlaceCode

theorem place_cell_spatial_coding_closed_from_evidence (P : PlaceCellSpatialCodingPackage)
    (E : PlaceCellSpatialCodingEvidence P) : PlaceCellSpatialCodingClosed P := by
  exact And.intro E.placeFieldFormationClosed
    (And.intro E.remappingDynamicsClosed
      (And.intro E.gridCellInteractionsClosed
        (And.intro E.boundaryVectorCellsClosed E.hippocampalPlaceCodeClosed)))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse