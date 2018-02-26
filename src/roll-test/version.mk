NAME       = sdsc-hadoop-roll-test
VERSION    = 1
RELEASE    = 4
PKGROOT    = /root/rolltests

RPM.EXTRAS = AutoReq:No\nAutoProv:No
RPM.FILES  = $(PKGROOT)/hadoop.t
