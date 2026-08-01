FROM archlinux

RUN sed -i "s|Server = |#Server = |g" /etc/pacman.d/mirrorlist \
    && echo "Server = https://mirror.yandex.ru/archlinux/\$repo/os/\$arch" >> /etc/pacman.d/mirrorlist \
    && pacman -S --refresh \
    && pacman -S --quiet --noconfirm --noprogressbar --needed base-devel git sudo

WORKDIR /root
COPY . .

ENTRYPOINT ["./make-packages-cache"]
