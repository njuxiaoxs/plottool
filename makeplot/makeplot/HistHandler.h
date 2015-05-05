#ifndef Histhandler_H 
#define Histhandler_H 

#include <TH1F.h>
#include <TFile.h>
#include <string.h>

#include <vector>

#include "EventLoop/StatusCode.h"

#include "CxAODTools/ConfigStore.h"

using namespace std ;

Class HistHandle
{

protect:


  TH1F* hist ;
  string m_hist_name ; 
  Type m_type ; 

  vector<TH1F*> m_hist_component ; 

public :

  enum Type{
    signal,
    background
  } ;

  string GetHistName(){return m_hist_name ;}  ;
  vector<TH1F*> GetHistComponent(vector<string> component_name) ;
  Type GetHistType(){return m_type ;}  ;

  void SetHistName(string hist_name){m_hist_name = hist_name ;} ;
  void SetHistType(Type type){ m_type = type ;}  ;
  void MergeHistComponent(vector<TH1F*> hist_component) ;

}
