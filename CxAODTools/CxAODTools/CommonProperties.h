// Dear emacs, this is -*-c++-*-
#ifndef CxAODTools_CommonProperties_H
#define CxAODTools_CommonProperties_H

#ifndef __MAKECINT__

#include "CxAODTools/ObjectDecorator.h"


// Preprocessor macro to define property classes
// 
// Usage example:
// (in ~ CxAODTools_MyAnalysis/CxAODTools_MyAnalysis/Properties_MyAnalysis.h)
// 
// #include "CxAODTools/CommonProperties.h"
// PROPERTY( Props , int   , myInt   );
// PROPERTY( Props , float , myFloat );
// PROPERTY( MyProps , int   , myInt   ); 
// ...

// Note, it is _never_ needed to specify your own namespace "MyProps" if the 
// property already exists in another namespace, e.g. in "Props". In general,
// it's better always use namespace "Props" in your own analysis, since you 
// then get an extra compile time check on whether you declared a property 
// with the same name as another previously declared property but with a 
// different type (if using a different namespace, this would compile, but
// fail at runtime).

// IMPORTANT :
// Don't attempt use bool properties !!!
// A bool properties gets saved as char when written to disk.
// Consequently, you cannot use the same code to access the property, when
// reading the file back in. For this reason, the bool template is disabled.


// The list below is sinply the sum (minus duplicates) of all properties
// Should be separated into analysis specific props and common props once the dust settles...
// .. and maybe reorganised to give 


// OR tool
PROPERTY( Props , char , ORInputLabel )
PROPERTY( Props , char , OROutputLabel )
PROPERTY( Props , char , hasSharedTrack )

// common stuff
PROPERTY( Props , int , passPreSel )
PROPERTY( Props , int , partIndex )
PROPERTY( Props , int , passOR )
PROPERTY( Props , int , passORGlob )

// e-gamma ID
PROPERTY( Props , int , isVeryLooseLH )
PROPERTY( Props , int , isVeryTightLH )
PROPERTY( Props , int , isTightPP )
PROPERTY( Props , int , isMediumPP )
PROPERTY( Props , int , isLoosePP )

// analysis quality assignment
PROPERTY( Props , int , isVHLooseElectron )
PROPERTY( Props , int , isVHSignalElectron )
PROPERTY( Props , int , isZHSignalElectron )
PROPERTY( Props , int , isWHSignalElectron )
PROPERTY( Props , int , isTTLHOLRElectron )
PROPERTY( Props , int , isTTLHDiLepVetoElectron )
PROPERTY( Props , int , isTTLHPreSelElectron )
PROPERTY( Props , int , isTTLHIsolElectron )
PROPERTY( Props , int , isTTLHSoftElectron )
PROPERTY( Props , int , isEWOrigin )

//VV
PROPERTY( Props , int , isVVLooseElectron )
PROPERTY( Props , int , isVVTightElectron )

//HH->bbtautau
PROPERTY( Props , int , isBBTTSignalElectron )
PROPERTY( Props , int , isHHLooseElectron )

PROPERTY( Props , float , effSFloose )
PROPERTY( Props , float , effSFtight )
PROPERTY( Props , float , charge )


PROPERTY( Props , int , passedIDCuts )
PROPERTY( Props , int , acceptedMuonTool )
PROPERTY( Props , int , isVHLooseMuon )
PROPERTY( Props , int , isVHSignalMuon )
PROPERTY( Props , int , isZHSignalMuon )
PROPERTY( Props , int , isWHSignalMuon )
PROPERTY( Props , int , isTTLHOLRTauMuon )
PROPERTY( Props , int , isTTLHDiLepVetoMuon )
PROPERTY( Props , int , isTTLHPreSelMuon )
PROPERTY( Props , int , isTTLHIsolMuon )
PROPERTY( Props , int , isTTLHSoftMuon )
PROPERTY( Props , int , isVVLooseMuon )

//HH->bbtautau
PROPERTY( Props , int , isBBTTSignalMuon )
PROPERTY( Props , int , isHHLooseMuon )

PROPERTY( Props , float , z0 )
PROPERTY( Props , float , d0 )
PROPERTY( Props , float , effSF )


PROPERTY( Props , int , goodJet )
PROPERTY( Props , int , TruthLabelID )     //rel19
PROPERTY( Props , int , ConeTruthLabelID ) //rel20
PROPERTY( Props , int , isVetoJet )
PROPERTY( Props , int , isVBFJet )
PROPERTY( Props , int , isSignalJet )

PROPERTY( Props , float , MV1 )
PROPERTY( Props , float , SV1_IP3D )
//PROPERTY( Props , float , SV1_PB )
//PROPERTY( Props , float , SV1_PC )
//PROPERTY( Props , float , SV1_PU )
PROPERTY( Props , float , MV2c00 )
PROPERTY( Props , float , MV2c10 )
PROPERTY( Props , float , MV2c20 )
PROPERTY( Props , float , MVb )
PROPERTY( Props , float , jvf0 )
PROPERTY( Props , float , btagSF )
  
// fatjet
PROPERTY( Props , int , passSubstructure )
PROPERTY( Props , int , passWMassCut )
PROPERTY( Props , int , passZMassCut )
PROPERTY( Props , int , isFatJet )
PROPERTY( Props , int , isWJet )
PROPERTY( Props , int , isZJet )
PROPERTY( Props , float , Tau21 )
PROPERTY( Props , float , Tau32 )
PROPERTY( Props , float , D2 )


// e-gamma ID
//TODO: check these for photons
//PROPERTY( PhotProps , int , isVeryLooseLH )
//PROPERTY( PhotProps , int , isVeryTightLH )
//PROPERTY( PhotProps , int , isTightPP )
PROPERTY( Props , int , isTightIso )

// analysis quality assignment
PROPERTY( Props , int , isVBFLoosePhoton )
PROPERTY( Props , int , isVBFSignalPhoton )


PROPERTY( Props , int , passEvetoEffSel )
PROPERTY( Props , int , passEvetoOR )
PROPERTY( Props , int , nTracks )
PROPERTY( Props , int , nWideTracks )
PROPERTY( Props , int , nPi0PFOs ) //tau->nPi0_PFOs()
PROPERTY( Props , int , isBDTLoose )
PROPERTY( Props , int , isBDTMedium )
PROPERTY( Props , int , isBDTTight )
PROPERTY( Props , int , passLooseTau )
PROPERTY( Props , int , passEvetoLoose )
PROPERTY( Props , int , passEvetoMedium )
PROPERTY( Props , int , passEvetoTight )
PROPERTY( Props , int , passTauSelector )
PROPERTY( Props , int , TruthMatch )
PROPERTY( Props , int , LeptonTruthMatch )
PROPERTY( Props , int , passCandSel )
PROPERTY( Props , int , isHHSignalTau )

PROPERTY( Props , float , BDTScore )  
PROPERTY( Props , float , effSFeveto )
PROPERTY( Props , float , EleBDTScore )
PROPERTY( Props , float , TrackEta )


PROPERTY( Props , float , zPV )

PROPERTY( Props , int , isTrackJet )

PROPERTY( Props , int , TTLH_isvbf )
PROPERTY( Props , int , TTLH_isboost )
PROPERTY( Props , int , TTLH_presel )
PROPERTY( Props , int , TTLH_dilepcr )
PROPERTY( Props , int , TTLH_os )
PROPERTY( Props , int , TTLH_hasbtag )
PROPERTY( Props , int , TTLH_iselhad )
PROPERTY( Props , int , isMC )
PROPERTY( Props , int , NVtx3Trks )
PROPERTY( Props , int , hasPV )
PROPERTY( Props , int , passGRL )
PROPERTY( Props , int , isCleanEvent )
PROPERTY( Props , int , TTLH_njets )
PROPERTY( Props , int , TriggerStream )
PROPERTY( Props , int , passTrigger )
PROPERTY( Props , int , passHLT_xe100 )
PROPERTY( Props , int , passHLT_e28_tight_iloose )
PROPERTY( Props , int , passHLT_e60_medium1 )
PROPERTY( Props , int , passHLT_2e17_loose1 )
PROPERTY( Props , int , passHLT_mu26_imedium )
PROPERTY( Props , int , passHLT_mu50 )
PROPERTY( Props , int , passHLT_2mu14 )

PROPERTY( Props , float , MCEventWeight )
PROPERTY( Props , float , Pileupweight )
PROPERTY( Props , float , ZPV )
PROPERTY( Props , float , leptonSF )
PROPERTY( Props , float , TTLH_MMC )
PROPERTY( Props , float , TTLH_mT )
PROPERTY( Props , float , TTLH_mvis )
PROPERTY( Props , float , TTLH_drleptau )
PROPERTY( Props , float , TTLH_ptH )
PROPERTY( Props , float , TTLH_detajj )
PROPERTY( Props , float , TTLH_pttot )
PROPERTY( Props , float , TTLH_ptl_over_pttau )
PROPERTY( Props , float , TTLH_lep_eta_cent )
PROPERTY( Props , float , TTLH_met_phi_cent )
PROPERTY( Props , float , TTLH_sumpt )
PROPERTY( Props , float , TTLH_mjj )
PROPERTY( Props , float , TTLH_jet_cent )
PROPERTY( Props , float , TTLH_tau_x1 )
PROPERTY( Props , float , TTLH_lep_x2 )
PROPERTY( Props , float , TTLH_sumdphi )
PROPERTY( Props , float , TTLH_globalweight )
PROPERTY( Props , float , TTLH_btaggingweight )




#endif // __MAKECINT__
#endif //CxAODMaker_CommonProperties_H
