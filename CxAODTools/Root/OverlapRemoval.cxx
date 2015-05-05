#include "CxAODTools/OverlapRemoval.h"
#include "AssociationUtils/OverlapRemovalTool.h"
#include "CxAODTools/ReturnCheck.h"
#include "CxAODTools/CommonProperties.h"

OverlapRemoval::OverlapRemoval(ConfigStore & config) :
  m_config(config),
  m_applyOverlapRemoval(true),
  m_overlapRemovalTool(nullptr)
{
  //from config
  //------------
  m_config.getif<bool>("debug", m_debug);
  m_config.getif<bool>("applyOverlapRemoval", m_applyOverlapRemoval);
}
  
EL::StatusCode OverlapRemoval::initialize()
{
  if (!m_applyOverlapRemoval) {
    return EL::StatusCode::SUCCESS;
  }
  
  //initialize overlap removal tool
  //-------------------------------
  m_overlapRemovalTool = new OverlapRemovalTool("OverlapRemovalTool");
  m_overlapRemovalTool->msg().setLevel(MSG::INFO);
  if(m_debug) m_overlapRemovalTool->msg().setLevel(MSG::DEBUG);
  // Set name of decoration which tells the OR tool which objects to consider
  // if set to "false", the object automatically passes OR, i.e. the OROutputLabel is 0 (as in "do not remove this object").
  TOOL_CHECK("OverlapRemoval::initialize()", m_overlapRemovalTool->setProperty("InputLabel", "ORInputLabel"));
  // Set name of decoration the OR tool will add as decoration
  // if decoration is "false" the object should be removed, while if "true" the object should be kept.
  TOOL_CHECK("OverlapRemoval::initialize()", m_overlapRemovalTool->setProperty("OverlapLabel", "OROutputLabel"));
  // ElectronJetDRCone = 0.4 -> only jets removed as in run1 VHbb
  //TOOL_CHECK("OverlapRemoval::initialize()", m_overlapRemovalTool->setProperty("ElectronJetDRCone", 0.4));
  //this needs to be done in the CxAODMaker 
  bool writeFlagForEleMuOR = false;
  m_config.getif<bool>("writeFlagForEleMuOR",writeFlagForEleMuOR);
  if(writeFlagForEleMuOR) TOOL_CHECK("OverlapRemoval::initialize()", m_overlapRemovalTool->setProperty("WriteSharedTrackFlag", true));
  //this needs to be used in the CxAODReader
  bool useFlagForEleMuOR = false;
  m_config.getif<bool>("useFlagForEleMuOR",useFlagForEleMuOR);
  if(useFlagForEleMuOR) TOOL_CHECK("OverlapRemoval::initialize()", m_overlapRemovalTool->setProperty("UseSharedTrackFlag", true));

  TOOL_CHECK("OverlapRemoval::initialize()", m_overlapRemovalTool->initialize());
  
  return EL::StatusCode::SUCCESS;
}

OverlapRemoval::~OverlapRemoval()
{
  delete m_overlapRemovalTool;
}


EL::StatusCode OverlapRemoval::removeOverlap(const xAOD::ElectronContainer* electrons,
                                             const xAOD::PhotonContainer* photons,
					     const xAOD::MuonContainer* muons,
					     const xAOD::TauJetContainer* taus,
                                             const xAOD::JetContainer* jets)
{

  // Set input flag for the OR tool (IntProp::ORInputLabel)  
  if (electrons) {
    for (const xAOD::Electron* elec : *electrons) {
      Props::ORInputLabel.set(elec,Props::passPreSel.get(elec));
    }
  }

  if (muons) {
    for (const xAOD::Muon* muon : *muons) {
      Props::ORInputLabel.set(muon,Props::passPreSel.get(muon));
    }
  }
  
  if (jets) {
    for (const xAOD::Jet* jet : *jets) {
      Props::ORInputLabel.set(jet,Props::passPreSel.get(jet));
    }
  }
  
  if (taus) {
    for (const xAOD::TauJet* tau : *taus) {
      Props::ORInputLabel.set(tau,Props::passPreSel.get(tau));
    }
  }
  
  if (photons) {
    for (const xAOD::Photon* photon : *photons) {
      Props::ORInputLabel.set(photon,Props::passPreSel.get(photon));
    }
  }

  // taus and photons can be nulptrs - do not apply photon OR, but use method below!
  // electrons, muons and jets need to be valid pointers
  if (m_applyOverlapRemoval) {
    if (!m_overlapRemovalTool) {
      Error("OverlapRemoval::removeOverlap()", "OverlapRemovalTool not initialized!");
      return EL::StatusCode::FAILURE;
    }
    EL_CHECK("OverlapRemoval::removeOverlap()",m_overlapRemovalTool->removeOverlaps(electrons, muons, jets, taus, nullptr));
  }
  
  // set passOR flags
  if (electrons) {
    for (const xAOD::Electron* elec : *electrons) {
      bool passOR = Props::ORInputLabel.get(elec);
      if (m_applyOverlapRemoval)
        passOR &= ! Props::OROutputLabel.get(elec);
      Props::passOR.set(elec, passOR);
    }
  }

  if (muons) {
    for (const xAOD::Muon* muon : *muons) {
      bool passOR = Props::ORInputLabel.get(muon);
      if (m_applyOverlapRemoval)
        passOR &= ! Props::OROutputLabel.get(muon);
      Props::passOR.set(muon, passOR);
    }
  }
 
  if (jets) {
    for (const xAOD::Jet* jet : *jets) {
      bool passOR = Props::ORInputLabel.get(jet);
      if (m_applyOverlapRemoval)
        passOR &= ! Props::OROutputLabel.get(jet);
      Props::passOR.set(jet, passOR);
    }
  }
 
  if (taus){
    for (const xAOD::TauJet* tau : *taus) {
      bool passOR = Props::ORInputLabel.get(tau);
      if (m_applyOverlapRemoval)
        passOR &= ! Props::OROutputLabel.get(tau);
      Props::passOR.set(tau, passOR);
    }
  } 

  // TODO should VBFbba be moved to different package? 
  // photon removal
  if(photons) {
    for(const xAOD::Photon* phot : *photons) {
      Props::passOR.set(phot, false);
      //ignore particles that didnt pass the preselection
      if ( ! Props::passPreSel.get(phot) ) {
        continue;
      }
      
      if (!m_applyOverlapRemoval) {
	Props::passOR.set(phot, true);
        continue;
      }

      bool photPassOR = true;
      if(jets){
	for (const xAOD::Jet * jet : *jets) {
          // ignore particles that didn't pass pre-selection 
          if ( ! Props::passPreSel.get(jet) ) {
            continue;
          }
	  // ignore particles that didn't pass previous OR 
          if ( ! Props::passOR.get(jet) ) {
            continue;
          }
	  //do the OR
	  if (0.2 < phot->p4().DeltaR(jet->p4()) && phot->p4().DeltaR(jet->p4()) < 0.4) {
	    photPassOR &= false;
	  }//if
	}//for
      }//jets

      Props::passOR.set(phot, photPassOR);

    }//for(photons)
  }//if(photons)


  return EL::StatusCode::SUCCESS;
}

