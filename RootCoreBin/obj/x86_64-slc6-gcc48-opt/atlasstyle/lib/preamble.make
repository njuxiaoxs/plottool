RC_CXX       = g++
RC_LD        = g++
RC_CXXFLAGS  = -I/afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root -I/afs/cern.ch/work/c/cwang/plottool/atlasstyle -O2 -Wall -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -g -DROOTCORE -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DROOTCORE_PACKAGE=\"atlasstyle\" 
RC_DICTFLAGS = -I/afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root -I/afs/cern.ch/work/c/cwang/plottool/atlasstyle -O2 -Wall -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -g -DROOTCORE -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DROOTCORE_PACKAGE=\"atlasstyle\" 
RC_INCFLAGS  = -I/afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root -I/afs/cern.ch/work/c/cwang/plottool/atlasstyle -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -DROOTCORE -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DROOTCORE_PACKAGE=\"atlasstyle\"
RC_LIBFLAGS  = -shared -m64 -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic 
RC_BINFLAGS  = -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/lib/x86_64-slc6-gcc48-opt -latlasstyle -lCintex -lReflex -m64 -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic


all_atlasstyle : dep_atlasstyle package_atlasstyle

package_atlasstyle :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib/libatlasstyle.so postcompile_atlasstyle

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib/libatlasstyle.so :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasLabels.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasStyle.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasUtils.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/TestLabel.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.o | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib
	$(SILENT)echo Linking `basename $@`
	$(SILENT)$(RC_LD) /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasLabels.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasStyle.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasUtils.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/TestLabel.o /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.o $(RC_LIBFLAGS) -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/lib/x86_64-slc6-gcc48-opt -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/%.o : /afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root/%.cxx | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasLabels.d
	$(SILENT)echo Compiling `basename $@`
	$(SILENT)rc --internal check_dep_cc atlasstyle $@
	$(SILENT)$(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES) -c $< -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/%.d : /afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root/%.cxx | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES)  -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.o : /afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root/LinkDef.h /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.headers | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.d
	$(SILENT)echo Compiling `basename $@`
	$(SILENT)rc --internal check_dep_cc atlasstyle $@
	$(SILENT)rc --internal rootcint $(ROOTSYS)/bin/rootcint $(RC_INCFLAGS) /afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root/LinkDef.h /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.cxx /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib atlasstyle
	$(SILENT)$(RC_CXX) $(RC_DICTFLAGS) $(INCLUDES) -c /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.cxx -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.headers : /afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root/LinkDef.h | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES) -D__CINT__ -D__MAKECINT__ -D__CLING__ -Wno-unknown-pragmas -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.d : /afs/cern.ch/work/c/cwang/plottool/atlasstyle/Root/LinkDef.h | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES)  -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

postcompile_atlasstyle :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/lib/libatlasstyle.so
	$(SILENT)rc --internal postcompile_pkg atlasstyle


dep_atlasstyle : /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasUtils.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/TestLabel.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasLabels.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasStyle.d


-include  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasUtils.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/atlasstyleCINT.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/TestLabel.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasLabels.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstyle/obj/AtlasStyle.d
