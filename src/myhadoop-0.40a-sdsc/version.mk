VERSION            = 0.40a
NAME               = myhadoop-$(VERSION)
RELEASE            = 2
PKGROOT            = /opt/hadoop/contrib/myhadoop-0.40a-sdsc
RPM.EXTRAS         = AutoReq:No

SRC_SUBDIR         = myHadoop

SOURCE_NAME        = myhadoop
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION)-sdsc.$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS        = $(SOURCE_PKG)
