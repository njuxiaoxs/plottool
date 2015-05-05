// Dear emacs, this is -*-c++-*-
#ifndef CxAODTools__EventSelection_H
#define CxAODTools__EventSelection_H

#ifndef __MAKECINT__
#include "CxAODTools/CommonProperties.h"
#include "CxAODTools/CutFlowCounter.h"
#endif // not __MAKECINT__

#include "xAODEgamma/ElectronContainer.h"
#include "xAODEgamma/PhotonContainer.h"
#include "xAODMuon/MuonContainer.h"
#include "xAODJet/JetContainer.h"
#include "xAODTau/TauJetContainer.h"
#include "xAODEventInfo/EventInfo.h"
#include "xAODMissingET/MissingETContainer.h"	

class EventSelection
{
protected:
#ifndef __MAKECINT__
  CutFlowCounter m_PreselectionCutFlow;
#endif // not __MAKECINT__

  public:
    EventSelection() ;
    virtual ~EventSelection() = default;

    virtual bool passPreSelection(const xAOD::EventInfo* evtinfo,
                                  const xAOD::MissingET* met,
                                  const xAOD::ElectronContainer* electrons,
				  const xAOD::PhotonContainer* photons,
                                  const xAOD::MuonContainer* muons,
				  const xAOD::TauJetContainer* taus,
                                  const xAOD::JetContainer* jets,
                                  const xAOD::JetContainer* fatjets,
				  bool isKinVar) = 0;

    virtual bool passSelection(const xAOD::EventInfo* evtinfo,
                               const xAOD::MissingET* met,
                               const xAOD::ElectronContainer* electrons,
			       const xAOD::PhotonContainer* photons,
                               const xAOD::MuonContainer* muons,
			       const xAOD::TauJetContainer* taus,
                               const xAOD::JetContainer* jets,
			       bool isKinVar) = 0;
    
    virtual void writeEventVariables(const xAOD::EventInfo* eventInfoIn,
                             xAOD::EventInfo* eventInfoOut,
                             bool isKinVar,
                             bool isWeightVar) = 0;
  
  const CutFlowCounter& getCutFlowCounter() const { return m_PreselectionCutFlow; }
 
};

static bool sort_pt(const xAOD::Jet* jetA, const xAOD::Jet* jetB) {
  return jetA->pt() > jetB->pt();
}

#endif
