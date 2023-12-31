
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport
CONFIG += debug_and_release	# warning: specifying EITHER release OR debug breaks the dll installation target on Windows !
#CONFIG += small-resolution	# Uncomment this line if you want the project to be build for small resolution by default

TEMPLATE = app
TARGET = FreeSSM
DESTDIR = ./
DEPENDPATH += . src ui
INCLUDEPATH += . src src/tinyxml


# Input
HEADERS += src/FreeSSM.h \
           src/Languages.h \
           src/CmdLine.h \
           src/EngineDialog.h \
           src/TransmissionDialog.h \
           src/ABSdialog.h \
           src/CruiseControlDialog.h \
           src/AirConDialog.h \
           src/Preferences.h \
           src/About.h \
           src/FSSMdialogs.h \
           src/ActuatorTestDlg.h \
           src/AbstractDiagInterface.h \
           src/ATcommandControlledDiagInterface.h \
           src/SerialPassThroughDiagInterface.h \
           src/J2534DiagInterface.h \
           src/J2534.h \
           src/J2534misc.h \
           src/SSMP1communication.h \
           src/SSMP1communication_procedures.h \
           src/SSMP1base.h \
           src/SSMP2communication.h \
           src/SSMP2communication_core.h \
           src/AbstractSSMcommunication.h \
           src/SSMprotocol.h \
           src/SSMprotocol1.h \
           src/SSMprotocol2.h \
           src/AddMBsSWsDlg.h \
           src/ControlUnitDialog.h \
           src/CUinfo_abstract.h \
           src/CUinfo_Engine.h \
           src/CUinfo_Transmission.h \
           src/CUinfo_simple.h \
           src/CUcontent_DCs_abstract.h \
           src/CUcontent_DCs_engine.h \
           src/CUcontent_DCs_twoMemories.h \
           src/CUcontent_DCs_stopCodes.h \
           src/CUcontent_MBsSWs.h \
           src/CUcontent_MBsSWs_tableView.h \
           src/CUcontent_Adjustments.h \
           src/CUcontent_sysTests.h \
           src/DiagInterfaceStatusBar.h \
           src/SSMDefinitionsInterface.h \
           src/SSMLegacyDefinitionsInterface.h \
           src/SSMFlagbyteDefinitionsInterface.h \
           src/SSMFlagbyteDefinitions_SysDescriptions.h \
           src/SSMFlagbyteDefinitions_en.h \
           src/SSMFlagbyteDefinitions_de.h \
           src/SSMFlagbyteDefinitions_tr.h \
           src/SSMCUdata.h \
           src/ClearMemoryDlg.h \
           src/libFSSM.h \
           src/tinyxml2/tinyxml2.h \

SOURCES += src/main.cpp \
           src/FreeSSM.cpp \
           src/CmdLine.cpp \
           src/EngineDialog.cpp \
           src/TransmissionDialog.cpp \
           src/ABSdialog.cpp \
           src/CruiseControlDialog.cpp \
           src/AirConDialog.cpp \
           src/Preferences.cpp \
           src/About.cpp \
           src/FSSMdialogs.cpp \
           src/ActuatorTestDlg.cpp \
           src/AbstractDiagInterface.cpp \
           src/ATcommandControlledDiagInterface.cpp \
           src/SerialPassThroughDiagInterface.cpp \
           src/J2534DiagInterface.cpp \
           src/J2534misc.cpp \
           src/SSMP1communication.cpp \
           src/SSMP1communication_procedures.cpp \
           src/SSMP1base.cpp \
           src/SSMP2communication.cpp \
           src/SSMP2communication_core.cpp \
           src/AbstractSSMcommunication.cpp \
           src/SSMprotocol.cpp \
           src/SSMprotocol1.cpp \
           src/SSMprotocol2.cpp \
           src/AddMBsSWsDlg.cpp \
           src/ControlUnitDialog.cpp \
           src/CUinfo_Engine.cpp \
           src/CUinfo_Transmission.cpp \
           src/CUinfo_simple.cpp \
           src/CUcontent_DCs_abstract.cpp \
           src/CUcontent_DCs_engine.cpp \
           src/CUcontent_DCs_twoMemories.cpp \
           src/CUcontent_DCs_stopCodes.cpp \
           src/CUcontent_MBsSWs.cpp \
           src/CUcontent_MBsSWs_tableView.cpp \
           src/CUcontent_Adjustments.cpp \
           src/CUcontent_sysTests.cpp \
           src/DiagInterfaceStatusBar.cpp \
           src/SSMDefinitionsInterface.cpp \
           src/SSMLegacyDefinitionsInterface.cpp \
           src/SSMFlagbyteDefinitionsInterface.cpp \
           src/SSMFlagbyteDefinitions_SysDescriptions.cpp \
           src/SSMFlagbyteDefinitions_en.cpp \
           src/SSMFlagbyteDefinitions_de.cpp \
           src/SSMFlagbyteDefinitions_tr.cpp \
           src/SSMCUdata.cpp \
           src/ClearMemoryDlg.cpp \
           src/libFSSM.cpp \
           src/tinyxml2/tinyxml2.cpp \

small-resolution {
  DEFINES += SMALL_RESOLUTION
  FORMS += ui/small/FreeSSM.ui \
           ui/small/ControlUnitDialog.ui \
           ui/small/CUcontent_DCs_engine.ui \
           ui/small/CUcontent_DCs_twoMemories.ui \
           ui/small/CUcontent_DCs_stopCodes.ui \
           ui/small/CUcontent_MBsSWs.ui \
           ui/small/CUcontent_MBsSWs_tableView.ui \
           ui/small/CUcontent_Adjustments.ui \
           ui/small/CUcontent_sysTests.ui \
           ui/small/AddMBsSWsDlg.ui \
           ui/small/CUinfo_Engine.ui \
           ui/small/CUinfo_Transmission.ui \
           ui/small/CUinfo_simple.ui \
           ui/small/Preferences.ui \
           ui/small/About.ui \
           ui/small/ActuatorTestDlg.ui
} else {
  FORMS += ui/FreeSSM.ui \
           ui/ControlUnitDialog.ui \
           ui/CUcontent_DCs_engine.ui \
           ui/CUcontent_DCs_twoMemories.ui \
           ui/CUcontent_DCs_stopCodes.ui \
           ui/CUcontent_MBsSWs.ui \
           ui/CUcontent_MBsSWs_tableView.ui \
           ui/CUcontent_Adjustments.ui \
           ui/CUcontent_sysTests.ui \
           ui/AddMBsSWsDlg.ui \
           ui/CUinfo_Engine.ui \
           ui/CUinfo_Transmission.ui \
           ui/CUinfo_simple.ui \
           ui/Preferences.ui \
           ui/About.ui \
           ui/ActuatorTestDlg.ui
}

RESOURCES += resources/FreeSSM.qrc

TRANSLATIONS = FreeSSM_en.ts \
               FreeSSM_de.ts \
               FreeSSM_tr.ts

TRANSLATIONS_BIN = FreeSSM_en.qm \
                   FreeSSM_de.qm \
                   FreeSSM_tr.qm
                   # NOTE: we can't use wildcards (see below)

QMAKE_EXTRA_TARGETS += translation

QMAKE_CLEAN += *.qm

# Add pre-processor-define if we compile as debug:
CONFIG(debug, debug|release): DEFINES += __FSSM_DEBUG__ __SERIALCOM_DEBUG__ __J2534_API_DEBUG__
# Enable stuff which is deprectaed since Qt5:
greaterThan(QT_MAJOR_VERSION, 4): DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x040000	# only needed for method QHeaderView::setResizeMode()

# disable gcse-optimization (regressions with gcc-versions >= 4.2)
QMAKE_CXXFLAGS += -fno-gcse          # disable gcse-optimization (regressions with gcc-versions >= 4.2)
# language standard; requires c++11: range-for loop, constexpr, auto, initializer list, lambda expression, std::array, ...; Qt6.2+ requires c++17
greaterThan(QT_MAJOR_VERSION, 5):greaterThan(QT_MINOR_VERSION, 1) {
  QMAKE_CXXFLAGS += -std=c++17
} else {
  QMAKE_CXXFLAGS += -std=c++11
}

# Installation
isEmpty(INSTALLDIR) {
    unix:INSTALLDIR = $$system(echo ~)/FreeSSM
    win32:INSTALLDIR = $$system(echo %homedrive%)/FreeSSM
}
target.path = $$INSTALLDIR
filestarget.path = $$INSTALLDIR
filestarget.files = background.png LiberationSans*.ttf
unix:filestarget.files += resources/icons/freessm/48x48/FreeSSM.png
doctarget.path = $$INSTALLDIR/doc
doctarget.files = doc/*
defstarget.path = $$INSTALLDIR/definitions
defstarget.files = definitions/SSM1defs_*.xml
translation.commands = $$[QT_INSTALL_BINS]/lrelease FreeSSM.pro
translation.path = $$INSTALLDIR
translation.files = $$TRANSLATIONS_BIN  #NOTE: wildcards don't work (if the *.qm files don't exist yet when qmake is run, it creates a non-working installation command using the wildcard name as destination name)
translation.CONFIG += no_check_exist    #NOTE: files do not exist yet when qmake is run
win32 {
  platformstarget.path = $$INSTALLDIR/platforms
  dllstarget.path = $$INSTALLDIR
  lessThan(QT_MAJOR_VERSION, 5) {
    # Qt4
    dllstarget.files =                                  $$[QT_INSTALL_BINS]/libwinpthread-1.dll \    # only newer versions of Qt/MinGW
                                                        $$[QT_INSTALL_BINS]/libstd~1.dll \	# NOTE: actually libstdc++-6.dll
                                                         # NOTE: Due to Qt-Bug 74388 copying fails on older Qt/MinGW versions if the filename contains a '+'.
                                                         #       Using the 8.3 filename is the only known workaround, wildcards and quotes don't work !
                                                         #       The range of broken versions is unknown. Qt 4.8.7 (last release) / MinGW 4.8.2 is affected.
                                                        $$[QT_INSTALL_BINS]/libgcc_s_dw2-1.dll \
                                                        $$[QT_INSTALL_BINS]/mingwm10.dll             # only old versions of Qt/MinGW (e.g. Qt 4.8.5 / MinGW 3.81)
    CONFIG(release, debug|release): dllstarget.files += $$[QT_INSTALL_BINS]/QtCore4.dll \
                                                        $$[QT_INSTALL_BINS]/QtGui4.dll
    CONFIG(debug, debug|release): dllstarget.files   += $$[QT_INSTALL_BINS]/QtCored4.dll \
                                                        $$[QT_INSTALL_BINS]/QtGuid4.dll
  } else {
    # Qt5
    dllstarget.files =                                  $$[QT_INSTALL_BINS]/libwinpthread-1.dll \
                                                        $$[QT_INSTALL_BINS]/libgcc_s_dw2-1.dll \	# only MinGW32 32bit
                                                        $$[QT_INSTALL_BINS]/libgcc_s_seh-1.dll \	# only MinGW32 64bit
                                                        # Old Qt5/MinGW versions only (at least up to Qt 5.2.1 / MinGW 4.8):
                                                        $$[QT_INSTALL_BINS]/icuin51.dll \
                                                        $$[QT_INSTALL_BINS]/icuuc51.dll \
                                                        $$[QT_INSTALL_BINS]/icudt51.dll
        # NOTE: Due to a Qt-bug in older Qt/MinGW versions, copying files fails if the file name contains a '+'.
        #       According to the changelog of Qt, this should have been fixed with Qt 5.9.0, but e.g. Qt-bug 74388 says 5.11.4 is (still) affected.
        #       Confirmed to be fixed at least since Qt 5.12.3 / MinGW 7.3.0.
        greaterThan(QT_MAJOR_VERSION, 5) | greaterThan(QT_MINOR_VERSION, 8) {		# NOTE: & can't be used !
            dllstarget.files +=                         $$[QT_INSTALL_BINS]/libstdc++-6.dll
        } else {
            dllstarget.files +=                         $$[QT_INSTALL_BINS]/libstd~1.dll
            # NOTE: Using the 8.3 filename can be used as workaround on at least most affected Qt 5 versions.
            #       Recent Qt versions started using "qmake -install qinstall ..." instead of "copy /y ..." to install files,
            #       which apparently doesn't expand the destination file name properly if 8.3 file names are used.
        }
    CONFIG(release, debug|release): dllstarget.files += $$[QT_INSTALL_BINS]/Qt5Core.dll \
                                                        $$[QT_INSTALL_BINS]/Qt5Gui.dll \
                                                        $$[QT_INSTALL_BINS]/Qt5PrintSupport.dll \
                                                        $$[QT_INSTALL_BINS]/Qt5Widgets.dll
    CONFIG(debug, debug|release): dllstarget.files   += $$[QT_INSTALL_BINS]/Qt5Cored.dll \
                                                        $$[QT_INSTALL_BINS]/Qt5Guid.dll \
                                                        $$[QT_INSTALL_BINS]/Qt5PrintSupportd.dll \
                                                        $$[QT_INSTALL_BINS]/Qt5Widgetsd.dll
    CONFIG(release, debug|release): platformstarget.files = $$[QT_INSTALL_PLUGINS]/platforms/qwindows.dll
    CONFIG(debug, debug|release): platformstarget.files   = $$[QT_INSTALL_PLUGINS]/platforms/qwindowsd.dll
  }
}
unix {
    defstarget.files += definitions/J2534libs.xml
}
INSTALLS += target doctarget defstarget filestarget translation
win32:INSTALLS += dllstarget platformstarget




# OS-specific options
unix {
       DEPENDPATH += src/linux
       INCLUDEPATH += src/linux
       HEADERS += src/linux/serialCOM.h \
                  src/linux/TimeM.h \
                  src/linux/J2534_API.h
       SOURCES += src/linux/serialCOM.cpp \
                  src/linux/TimeM.cpp \
                  src/linux/J2534_API.cpp
       LIBS += -ldl -lrt
}

win32 {
       CONFIG(debug, debug|release): CONFIG += console
       DEPENDPATH += src/windows
       INCLUDEPATH += src/windows
       HEADERS += src/windows/serialCOM.h \
                  src/windows/TimeM.h \
                  src/windows/J2534_API.h
       SOURCES += src/windows/serialCOM.cpp \
                  src/windows/TimeM.cpp \
                  src/windows/J2534_API.cpp
       RC_FILE = resources/FreeSSM_WinAppIcon.rc
}
