VERSION            = 1.2.1
NAME               = hadoop-$(VERSION)
RELEASE            = 2
PKGROOT            = /opt/hadoop/v1.2.1
RPM.EXTRAS         = AutoReq:No

SRC_SUBDIR         = hadoop

SOURCE_NAME        = hadoop
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS        = $(SOURCE_PKG)
