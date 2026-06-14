FROM archlinux

RUN echo "Server = https://mirror.yandex.ru/archlinux/\$repo/os/\$arch" >> /etc/pacman.d/mirrorlist \
    && pacman -S --refresh \
    && pacman -S --quiet --noconfirm --noprogressbar --needed base-devel git sudo

WORKDIR /root
COPY . .

ENTRYPOINT ["./make-packages-cache"]
