FROM archlinux

RUN pacman -S --refresh --sysupgrade --noconfirm --noprogressbar \
    && pacman -S --noconfirm --noprogressbar --needed squashfs-tools dosfstools mtools arch-install-scripts xorriso

WORKDIR /tmp/skyos-build

COPY configs/releng releng
COPY archiso/prepare/pacman-packages.conf releng/airootfs/root/pacman-packages.conf

ENTRYPOINT ["archiso/build-iso"]
