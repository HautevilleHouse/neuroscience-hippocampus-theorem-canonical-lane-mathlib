import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure ConnectomicsNetworkPackage where
  synapticConnectivity : Prop
  networkTopology : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsNetworkEvidence (P : ConnectomicsNetworkPackage) where
  synapticConnectivityClosed : P.synapticConnectivity
  networkTopologyClosed : P.networkTopology
  smallWorldPropertyClosed : P.smallWorldProperty
  modularStructureClosed : P.modularStructure

def ConnectomicsNetworkClosed (P : ConnectomicsNetworkPackage) : Prop :=
  P.synapticConnectivity ∧ P.networkTopology ∧
  P.smallWorldProperty ∧ P.modularStructure

theorem connectomics_network_closed_from_evidence
    (P : ConnectomicsNetworkPackage) (E : ConnectomicsNetworkEvidence P) :
    ConnectomicsNetworkClosed P := by
  exact And.intro E.synapticConnectivityClosed
    (And.intro E.networkTopologyClosed
      (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
