import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkTopology : Prop
  smallWorldProperty : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  networkTopologyClosed : C.networkTopology
  smallWorldPropertyClosed : C.smallWorldProperty

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧ C.networkTopology ∧ C.smallWorldProperty

theorem connectomics_closed_from_evidence
    (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.structuralConnectivityClosed
    (And.intro E.functionalConnectivityClosed
      (And.intro E.networkTopologyClosed E.smallWorldPropertyClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse