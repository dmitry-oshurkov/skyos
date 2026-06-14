FROM archlinux

RUN echo "Server = https://mirror.yandex.ru/archlinux/\$repo/os/\$arch" >> /etc/pacman.d/mirrorlist \
    && pacman -S --refresh \
    && pacman -S --quiet --noconfirm --noprogressbar --needed squashfs-tools dosfstools mtools arch-install-scripts xorriso

WORKDIR /tmp/skyos-build

COPY configs/releng releng
COPY archiso/prepare/pacman-packages.conf releng/airootfs/root/pacman-packages.conf

ENTRYPOINT ["archiso/build-iso"]
