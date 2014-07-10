NAME               = hadoop
VERSION            = 1.1.1
RELEASE            = 1
PKGROOT            = /opt/hadoop
RPM.EXTRAS         = AutoReq:No

SRC_SUBDIR         = hadoop

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS        = $(SOURCE_PKG)
