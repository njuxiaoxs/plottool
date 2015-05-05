// Dear emacs, this is -*-c++-*-
#ifndef CxAODTools__OverlapRemoval_H
#define CxAODTools__OverlapRemoval_H

#include "EventLoop/StatusCode.h"
#include "xAODEgamma/ElectronContainer.h"
#include "xAODEgamma/PhotonContainer.h"
#include "xAODMuon/MuonContainer.h"
#include "xAODJet/JetContainer.h"
#include "xAODTau/TauJetContainer.h"

#include "CxAODTools/ConfigStore.h"

class OverlapRemovalTool;

class OverlapRemoval
{
  protected:
    
    ConfigStore m_config; //!
    bool m_debug;
    // if m_applyOverlapRemoval==false -> let all particles pass
    // (just copy input flag -> output flag)
    bool m_applyOverlapRemoval;

    OverlapRemovalTool* m_overlapRemovalTool;

  public:
    OverlapRemoval(ConfigStore & config);
    virtual ~OverlapRemoval();

    virtual EL::StatusCode initialize();

    virtual EL::StatusCode removeOverlap(const xAOD::ElectronContainer* electrons,
                                         const xAOD::PhotonContainer* photons,
                                         const xAOD::MuonContainer* muons,
                                         const xAOD::TauJetContainer* taus,
                                         const xAOD::JetContainer* jets);
    
};


#endif
