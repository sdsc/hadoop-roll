NAME           = sdsc-myHadoop-$(VERSION)
VERSION        = 0.2a
RELEASE        = 3
PKGROOT        = /opt/hadoop/contrib/myHadoop-$(VERSION)

SRC_SUBDIR     = myHadoop

SOURCE_NAME    = myHadoop
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
