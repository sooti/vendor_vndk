#!/bin/bash

echo "PRODUCT_COPY_FILES += \\" > vndk-27-32.mk
echo "PRODUCT_COPY_FILES += \\" > vndk-27-64.mk
for lib in $(ls vndk-27-arm32);do
	echo -e "\tvendor/vndk/vndk-27-arm32/$lib:system/lib/vndk-27/$lib \\" >> vndk-27-32.mk
done
#for lib in $(ls vndk-sp-27-arm32);do
#	echo -e "\tvendor/vndk/vndk-sp-27-arm32/$lib:system/lib/vndk-sp-27/$lib \\" >> vndk32.mk
#done
for lib in $(ls vndk-27-arm64);do
	echo -e "\tvendor/vndk/vndk-27-arm64/$lib:system/lib64/vndk-27/$lib \\" >> vndk-27-64.mk
done
#for lib in $(ls vndk-sp-27-arm64);do
#	echo -e "\tvendor/vndk/vndk-sp-27-arm64/$lib:system/lib64/vndk-sp-27/$lib \\" >> vndk64.mk
#done
echo >> vndk-27-32.mk
echo >> vndk-27-64.mk
