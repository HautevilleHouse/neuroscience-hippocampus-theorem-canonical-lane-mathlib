import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

structure OscillationRhythms where
  thetaRhythm : Prop
  gammaRhythm : Prop
  thetaGammaCoupling : Prop
  pacMeasurement : Prop
  networkSynchronization : Prop
  cognitiveCorrelates : Prop
  thetaRhythmTerm : thetaRhythm
  gammaRhythmTerm : gammaRhythm
  thetaGammaCouplingTerm : thetaGammaCoupling
  pacMeasurementTerm : pacMeasurement
  networkSynchronizationTerm : networkSynchronization
  cognitiveCorrelatesTerm : cognitiveCorrelates

structure OscillationEvidence (O : OscillationRhythms) where
  thetaRhythmClosed : O.thetaRhythm
  gammaRhythmClosed : O.gammaRhythm
  thetaGammaCouplingClosed : O.thetaGammaCoupling
  pacMeasurementClosed : O.pacMeasurement
  networkSynchronizationClosed : O.networkSynchronization
  cognitiveCorrelatesClosed : O.cognitiveCorrelates

def OscillationClosed (O : OscillationRhythms) : Prop :=
  O.thetaRhythm ∧ O.gammaRhythm ∧ O.thetaGammaCoupling ∧
  O.pacMeasurement ∧ O.networkSynchronization ∧ O.cognitiveCorrelates

theorem oscillation_closed_from_evidence (O : OscillationRhythms)
    (E : OscillationEvidence O) : OscillationClosed O := by
  exact And.intro E.thetaRhythmClosed
    (And.intro E.gammaRhythmClosed
      (And.intro E.thetaGammaCouplingClosed
        (And.intro E.pacMeasurementClosed
          (And.intro E.networkSynchronizationClosed E.cognitiveCorrelatesClosed))))

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse