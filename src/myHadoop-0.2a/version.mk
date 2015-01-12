NAME               = myHadoop
VERSION            = 0.2a
RELEASE            = 2
PKGROOT            = /opt/hadoop/contrib/myHadoop
RPM.EXTRAS         = AutoReq:No

SRC_SUBDIR         = myHadoop

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS        = $(SOURCE_PKG)
