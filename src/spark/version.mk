NAME           = sdsc-spark
VERSION        = 0.9.1
RELEASE        = 3
PKGROOT        = /opt/spark

SRC_SUBDIR     = spark

SOURCE_NAME    = spark
SOURCE_SUFFIX  = tgz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION)-bin-hadoop2.$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TGZ_PKGS       = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
