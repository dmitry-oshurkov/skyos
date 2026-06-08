FROM archlinux

RUN pacman -Sq --refresh --noconfirm --noprogressbar \
    && pacman -Sq --noconfirm --noprogressbar --needed base-devel rate-mirrors git sudo

WORKDIR /root
COPY . .

ENTRYPOINT ["./make-packages-cache"]
