NAME           = sdsc-myHadoop
VERSION        = 0.40a
RELEASE        = 5
PKGROOT        = /opt/hadoop/contrib/myHadoop

SRC_SUBDIR     = myHadoop

SOURCE_NAME    = myhadoop
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION)-sdsc.$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
