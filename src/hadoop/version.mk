NAME           = sdsc-hadoop
VERSION        = 2.6.0
RELEASE        = 0
PKGROOT        = /opt/hadoop/$(VERSION)

SRC_SUBDIR     = hadoop

SOURCE_NAME    = hadoop
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
