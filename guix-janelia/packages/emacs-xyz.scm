(define-module (guix-janelia packages emacs-xyz)
  #:use-module (guix packages)
  #:use-module (guix profiles)
  #:use-module (guix git-download)
  #:use-module (guix build-system emacs)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz))

(define-public emacs-ef-euphoria-theme
  (package
    (name "emacs-ef-euphoria-theme")
    (version "0.2.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/peterpolidoro/ef-euphoria-theme")
              (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00lxn1cvb98klqdrgi3w05lh51ivlc2xkdrb7igndpgpr29ikhdz"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-ef-themes emacs-modus-themes))
    (home-page "https://github.com/peterpolidoro/ef-euphoria-theme")
    (synopsis "Emacs ef/modus-backed theme using the classic euphoria palette")
    (description "An Emacs ef/modus-based theme that preserves the original euphoria hues and optionally derives lighter/darker variants.")
    (license license:gpl3+)))
