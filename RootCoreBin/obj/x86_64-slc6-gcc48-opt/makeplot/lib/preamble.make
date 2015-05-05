RC_CXX       = g++
RC_LD        = g++
RC_CXXFLAGS  = -I/afs/cern.ch/work/c/cwang/plottool/makeplot/Root -I/afs/cern.ch/work/c/cwang/plottool/makeplot -O2 -Wall -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -g -DROOTCORE -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DXAOD_STANDALONE -DXAOD_ANALYSIS -DASGTOOL_STANDALONE -DROOTCORE_PACKAGE=\"makeplot\" 
RC_DICTFLAGS = -I/afs/cern.ch/work/c/cwang/plottool/makeplot/Root -I/afs/cern.ch/work/c/cwang/plottool/makeplot -O2 -Wall -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -g -DROOTCORE -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DXAOD_STANDALONE -DXAOD_ANALYSIS -DASGTOOL_STANDALONE -DROOTCORE_PACKAGE=\"makeplot\" 
RC_INCFLAGS  = -I/afs/cern.ch/work/c/cwang/plottool/makeplot/Root -I/afs/cern.ch/work/c/cwang/plottool/makeplot -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -DROOTCORE -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DXAOD_STANDALONE -DXAOD_ANALYSIS -DASGTOOL_STANDALONE -DROOTCORE_PACKAGE=\"makeplot\"
RC_LIBFLAGS  = -shared -m64 -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic 
RC_BINFLAGS  = -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/lib/x86_64-slc6-gcc48-opt -lmakeplot -latlasstyle -lCxAODTools -lxAODMissingET -lAssociationUtils -lxAODTau -lGenVector -lxAODBTaggingEfficiency -lPathResolver -lboost_filesystem -lHist -lCalibrationDataInterface -lRIO -lHist -lMatrix -lPATCore -lxAODEgamma -lxAODTruth -lTruthUtils -lxAODMuon -lxAODPrimitives -lMuonIdHelpers -lxAODJet -lGenVector -lxAODPFlow -lGenVector -lxAODCaloEvent -lCaloGeoHelpers -lxAODBTagging -lxAODTracking -lxAODTrigger -lPATInterfaces -lAsgTools -lxAODEventInfo -lxAODBase -lPhysics -lEventLoop -lProofPlayer -lProof -lHist -lTree -lxAODRootAccess -lTree -lxAODEventFormat -lxAODCore -lRIO -lAthContainers -lAthLinks -lxAODRootAccessInterfaces -lCxxUtils -lboost_regex -lboost_system -lSampleHandler -lPyROOT -lProof -lTree -lRootCoreUtils -lTree -lHist -lCintex -lReflex -m64 -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic


all_makeplot : dep_makeplot package_makeplot

package_makeplot :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib/libmakeplot.so /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/bin/main postcompile_makeplot

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib/libmakeplot.so :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/plottool.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.o | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib
	$(SILENT)echo Linking `basename $@`
	$(SILENT)$(RC_LD) /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/plottool.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.o $(RC_LIBFLAGS) -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/lib/x86_64-slc6-gcc48-opt -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/%.o : /afs/cern.ch/work/c/cwang/plottool/makeplot/Root/%.cxx | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/plottool.d
	$(SILENT)echo Compiling `basename $@`
	$(SILENT)rc --internal check_dep_cc makeplot $@
	$(SILENT)$(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES) -c $< -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/%.d : /afs/cern.ch/work/c/cwang/plottool/makeplot/Root/%.cxx | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES)  -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.o : /afs/cern.ch/work/c/cwang/plottool/makeplot/Root/LinkDef.h /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.headers | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.d
	$(SILENT)echo Compiling `basename $@`
	$(SILENT)rc --internal check_dep_cc makeplot $@
	$(SILENT)rc --internal rootcint $(ROOTSYS)/bin/rootcint $(RC_INCFLAGS) /afs/cern.ch/work/c/cwang/plottool/makeplot/Root/LinkDef.h /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.cxx /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib makeplot
	$(SILENT)$(RC_CXX) $(RC_DICTFLAGS) $(INCLUDES) -c /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.cxx -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.headers : /afs/cern.ch/work/c/cwang/plottool/makeplot/Root/LinkDef.h | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES) -D__CINT__ -D__MAKECINT__ -D__CLING__ -Wno-unknown-pragmas -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.d : /afs/cern.ch/work/c/cwang/plottool/makeplot/Root/LinkDef.h | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES)  -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/bin/% : /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/%.o | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib/libmakeplot.so /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/bin
	$(SILENT)echo Linking `basename $@`
	$(SILENT)$(RC_LD) -o $@ $< $(RC_BINFLAGS)

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/%.o : /afs/cern.ch/work/c/cwang/plottool/makeplot/util/%.cxx | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/main.d
	$(SILENT)echo Compiling `basename $@`
	$(SILENT)rc --internal check_dep_cc makeplot $@
	$(SILENT)$(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES) -c $< -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/%.d : /afs/cern.ch/work/c/cwang/plottool/makeplot/util/%.cxx | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES)  -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/bin : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

postcompile_makeplot :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/lib/libmakeplot.so /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/bin/main
	$(SILENT)rc --internal postcompile_pkg makeplot


dep_makeplot : /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/main.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/plottool.d


-include  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/makeplotCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/main.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/makeplot/obj/plottool.d
