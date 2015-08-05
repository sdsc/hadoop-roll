NAME           = sdsc-spark-1.2.0
VERSION        = 1.2.0
RELEASE        = 0
PKGROOT        = /opt/spark/$(VERSION)

SRC_SUBDIR     = spark

SOURCE_NAME    = spark
SOURCE_SUFFIX  = tgz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION)-bin-hadoop2.4.$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TGZ_PKGS       = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
