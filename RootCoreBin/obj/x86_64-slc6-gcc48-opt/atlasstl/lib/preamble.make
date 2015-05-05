RC_CXX       = g++
RC_LD        = g++
RC_CXXFLAGS  = -I/afs/cern.ch/work/c/cwang/plottool/atlasstl/Root -I/afs/cern.ch/work/c/cwang/plottool/atlasstl -O2 -Wall -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -g -DROOTCORE -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DROOTCORE_PACKAGE=\"atlasstl\" 
RC_DICTFLAGS = -I/afs/cern.ch/work/c/cwang/plottool/atlasstl/Root -I/afs/cern.ch/work/c/cwang/plottool/atlasstl -O2 -Wall -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -g -DROOTCORE -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DROOTCORE_PACKAGE=\"atlasstl\" 
RC_INCFLAGS  = -I/afs/cern.ch/work/c/cwang/plottool/atlasstl/Root -I/afs/cern.ch/work/c/cwang/plottool/atlasstl -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -I/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/include -DROOTCORE -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/include -DROOTCORE_PACKAGE=\"atlasstl\"
RC_LIBFLAGS  = -shared -m64 -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic 
RC_BINFLAGS  = -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/lib/x86_64-slc6-gcc48-opt -latlasstl -lCintex -lReflex -m64 -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.25-x86_64-slc6-gcc48-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic


all_atlasstl : dep_atlasstl package_atlasstl

package_atlasstl :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib/libatlasstl.so postcompile_atlasstl

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib/libatlasstl.so :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.o | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib
	$(SILENT)echo Linking `basename $@`
	$(SILENT)$(RC_LD) /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.o $(RC_LIBFLAGS) -L/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/lib/x86_64-slc6-gcc48-opt -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.o : /afs/cern.ch/work/c/cwang/plottool/atlasstl/Root/LinkDef.h /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.headers | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.d
	$(SILENT)echo Compiling `basename $@`
	$(SILENT)rc --internal check_dep_cc atlasstl $@
	$(SILENT)rc --internal rootcint $(ROOTSYS)/bin/rootcint $(RC_INCFLAGS) /afs/cern.ch/work/c/cwang/plottool/atlasstl/Root/LinkDef.h /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.cxx /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.headers /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib atlasstl
	$(SILENT)$(RC_CXX) $(RC_DICTFLAGS) $(INCLUDES) -c /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.cxx -o $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.headers : /afs/cern.ch/work/c/cwang/plottool/atlasstl/Root/LinkDef.h | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES) -D__CINT__ -D__MAKECINT__ -D__CLING__ -Wno-unknown-pragmas -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.d : /afs/cern.ch/work/c/cwang/plottool/atlasstl/Root/LinkDef.h | /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj
	$(SILENT)echo Making dependency for `basename $<`
	$(SILENT)rc --internal make_dep $(RC_CXX) $(RC_CXXFLAGS) $(INCLUDES)  -- $@ $< 

/afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib : 
	$(SILENT)echo Making directory $@
	$(SILENT)mkdir -p $@

postcompile_atlasstl :  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/lib/libatlasstl.so
	$(SILENT)rc --internal postcompile_pkg atlasstl


dep_atlasstl : /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.headers


-include  /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.d /afs/cern.ch/work/c/cwang/plottool/RootCoreBin/obj/x86_64-slc6-gcc48-opt/atlasstl/obj/atlasstlCINT.headers
