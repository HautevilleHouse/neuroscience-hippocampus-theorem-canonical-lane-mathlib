import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure ThetaRhythmOscillationsPackage where
  thetaFrequency : Prop
  phasePrecession : Prop
  networkSynchronization : Prop
  memoryEncoding : Prop

structure ThetaRhythmOscillationsEvidence (P : ThetaRhythmOscillationsPackage) where
  thetaFrequencyClosed : P.thetaFrequency
  phasePrecessionClosed : P.phasePrecession
  networkSynchronizationClosed : P.networkSynchronization
  memoryEncodingClosed : P.memoryEncoding

def ThetaRhythmOscillationsClosed (P : ThetaRhythmOscillationsPackage) : Prop :=
  P.thetaFrequency ∧ P.phasePrecession ∧
  P.networkSynchronization ∧ P.memoryEncoding

theorem theta_rhythm_oscillations_closed_from_evidence
    (P : ThetaRhythmOscillationsPackage) (E : ThetaRhythmOscillationsEvidence P) :
    ThetaRhythmOscillationsClosed P := by
  exact And.intro E.thetaFrequencyClosed
    (And.intro E.phasePrecessionClosed
      (And.intro E.networkSynchronizationClosed E.memoryEncodingClosed))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse
