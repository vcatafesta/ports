#!/bin/sh

kernver=$(cat /lib/modules/KERNELVERSION)
if [ $(command -v mkinitramfs) ]; then
	echo "mkinitramfs: generating initramfs for kernel $kernver..."
	mkinitramfs -q -k $kernver -o /boot/initrd-chili.img
fi

depmod $kernver

# run all dkms scripts
if [ $(command -v dkms) ]; then
	for i in /var/lib/dkms/buildmodules-*.sh; do
		sh $i
	done
fi

# removing other chili's kernel
for i in /lib/modules/*; do
	[ -d $i ] || continue
	case ${i##*/} in
		$kernver) continue;;
		*-chili)
			[ -d $i/build/include ] && continue
			echo "post-install: removing kernel ${i##*/}"
			rm -fr $i;;
	esac
done
