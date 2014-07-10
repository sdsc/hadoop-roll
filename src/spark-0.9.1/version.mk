VERSION            = 0.9.1
NAME               = spark
RELEASE            = 1
PKGROOT            = /opt/spark/v0.9.1
RPM.EXTRAS         = AutoReq:No

SRC_SUBDIR         = spark

SOURCE_NAME        = spark
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tgz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION)-bin-hadoop2.$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TGZ_PKGS           = $(SOURCE_PKG)
