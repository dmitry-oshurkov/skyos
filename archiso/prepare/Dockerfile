FROM archlinux

RUN cat > /etc/pacman.d/mirrorlist <<EOF
Server = https://mirror.yandex.ru/archlinux/\$repo/os/\$arch
Server = https://archlinux.gay/archlinux/\$repo/os/\$arch
Server = https://mirror.truenetwork.ru/archlinux/\$repo/os/\$arch
Server = https://mirror.kamtv.ru/archlinux/\$repo/os/\$arch
Server = https://repository.su/archlinux/\$repo/os/\$arch
Server = https://mirror.cachy-arch.ru/archlinux/\$repo/os/\$arch
Server = https://mirror.kpfu.ru/archlinux/\$repo/os/\$arch
Server = https://wan.metrosg.ru/archlinux/\$repo/os/\$arch
Server = https://mirror.nw-sys.ru/archlinux/\$repo/os/\$arch
Server = https://ru.mirrors.cicku.me/archlinux/\$repo/os/\$arch

Server = https://mirror.juniorjpdj.pl/archlinux/\$repo/os/\$arch
Server = https://archlinux.mirrors.ovh.net/archlinux/\$repo/os/\$arch
Server = https://gluttony.sin.cvut.cz/arch/\$repo/os/\$arch
Server = https://ftp.u-strasbg.fr/linux/distributions/archlinux/\$repo/os/\$arch
Server = https://mirror.franscorack.com/archlinux/\$repo/os/\$arch
EOF

RUN pacman -S --refresh \
    && pacman -S --quiet --noconfirm --noprogressbar --needed base-devel git sudo

WORKDIR /root
COPY . .

ENTRYPOINT ["./make-packages-cache"]
