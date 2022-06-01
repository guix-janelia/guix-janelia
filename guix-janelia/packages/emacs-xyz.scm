(define-module (guix-janelia packages emacs-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system emacs))

(define-public emacs-color-theme-modern
  (package
    (name "emacs-color-theme-modern")
    (version "20220506.858")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/emacs-jp/replace-colorthemes.git")
                    (commit "74ad69bbca6fcfff3c0960d888c7c9c1f9f3e2e8")))
              (sha256
               (base32
                "13ff4s372wsl5x13vh4vywhi6qcc54gybhp6rxl0r1l4wxidanwn"))))
    (build-system emacs-build-system)
    (home-page "https://github.com/emacs-jp/replace-colorthemes")
    (synopsis "Over one hundred Emacs themes ported from color-theme")
    (description "Over one hundred Emacs themes, including aalto-dark,
aalto-light, aliceblue, andreas, arjen, beige-diff, beige-eshell,
bharadwaj-slate, bharadwaj, billw, black-on-gray, blippblopp, blue-erc,
blue-eshell, blue-gnus, blue-mood, blue-sea, calm-forest, charcoal-black,
clarity, classic, cobalt, comidia, dark-blue, dark-blue2, dark-erc,
dark-font-lock, dark-gnus, dark-green, dark-info, dark-laptop, deep-blue,
desert, digital-ofs1, emacs-21, emacs-nw, euphoria, feng-shui, fischmeister,
gnome, gnome2, goldenrod, gray1, gray30, greiner, gtk-ide, high-contrast,
hober, infodoc, jb-simple, jedit-grey, jonadabian-slate, jonadabian, jsc-dark,
jsc-light, jsc-light2, julie, katester, kingsajz, late-night, lawrence,
ld-dark, lethe, marine, marquardt, matrix, midnight, mistyday, montz, oswald,
parus, pierson, pok-wob, pok-wog, railscast, ramangalahy, raspopovic,
renegade, resolve, retro-green, retro-orange, robin-hood, rotor, ryerson,
salmon-diff, salmon-font-lock, scintilla, shaman, simple-1, sitaramv-nt,
sitaramv-solaris, snow, snowish, standard-ediff, standard, subdued,
subtle-blue, subtle-hacker, taming-mr-arneson, taylor, tty-dark, vim-colors,
whateveryouwant, wheat, word-perfect, xemacs, xp")
    (license license:gpl3+)))
