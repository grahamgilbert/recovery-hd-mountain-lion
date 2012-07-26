include /usr/local/share/luggage/luggage.make

TITLE=Make_Recovery_HD_10.8
PACKAGE_NAME=Make_Recovery_HD_10.8
REVERSE_DOMAIN=com.grahamgilbert
PAYLOAD=pack-dmtest \
	pack-recoveryhd \
	pack-script-postflight


pack-dmtest: l_root
	@sudo mkdir -p ${WORK_D}/tmp
	@sudo ${DITTO} ./dmtest ${WORK_D}/tmp
	
pack-recoveryhd: l_root
	@sudo mkdir -p ${WORK_D}/tmp
	@sudo ${DITTO} ./Recovery\ HD.dmg ${WORK_D}/tmp