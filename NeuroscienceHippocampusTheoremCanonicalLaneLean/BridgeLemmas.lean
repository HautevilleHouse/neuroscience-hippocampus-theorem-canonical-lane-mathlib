import NeuroscienceHippocampusTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HippocampusWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceHippocampusTheoremCanonicalLaneLean
end HautevilleHouse