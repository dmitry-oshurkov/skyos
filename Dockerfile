FROM archlinux

RUN <<EOF
echo "NoExtract   = !*locale*/ru*/* !usr/share/i18n/charmaps/ru_RU.UTF-8.gz !usr/share/*locale*/locale.*" >> /etc/pacman.conf
echo "NoExtract   = !usr/share/*locales/ru_?? !usr/share/*locales/i18n* !usr/share/*locales/iso*" >> /etc/pacman.conf
echo "ru_RU.UTF-8 UTF-8" > /etc/locale.gen
echo "Europe/Moscow" > /etc/timezone
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
EOF

ENV LANG=ru_RU.UTF-8

RUN pacman -S --refresh \
    && pacman -S --quiet --noconfirm --noprogressbar squashfs-tools dosfstools mtools arch-install-scripts xorriso glibc

WORKDIR /tmp/skyos-build

COPY configs/releng releng
COPY archiso/prepare/pacman-packages.conf releng/airootfs/root/pacman-packages.conf

ENTRYPOINT ["archiso/build-iso"]
