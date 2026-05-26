FROM archlinux

RUN pacman -S --refresh --noconfirm --noprogressbar

WORKDIR /root
COPY . .

ENTRYPOINT ["./make-packages-cache"]
