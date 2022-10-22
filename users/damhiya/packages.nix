{ pkgs, ... }: {
  home.packages = with pkgs; [
    # ocaml & coq
    coq_8_16

    # lean
    elan

    # development
    twelf
    chez
    julia-bin
    nasm
    smlnj
    mercury
    teyjus
    rustup
    loc
    gnuplot
    neovide

    # document
    texlive.combined.scheme-full
    python3Packages.pygments
    pandoc
    okular
    zathura
    libreoffice
    pdfpc
    mendeley

    # media
    ffmpeg
    krita
    imagemagick
    gcolor2
    mpv
    nomacs

    # networking
    youtube-dl
    tor-browser-bundle-bin
    zulip
    discord
    slack
    zoom-us
    tdesktop
    qbittorrent

    # DE
    wl-clipboard
    wf-recorder
    wdisplays
    fuzzel
    swaybg
    dolphin

    # others
    obsidian
    bat
    delta
    duf
    ranger
    joshuto
    filelight
    waifu2x-converter-cpp
    osu-lazer
  ];
}