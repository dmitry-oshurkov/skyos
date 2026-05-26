FROM archlinux

RUN pacman -S --refresh --noconfirm --noprogressbar \
    && pacman -S --noconfirm --noprogressbar --needed base-devel git sudo

WORKDIR /root
COPY . .

ENTRYPOINT ["./make-packages-cache"]
