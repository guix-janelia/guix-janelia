(define-module (guix-janelia packages python)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  )


(define-public python-kicad-netlist-reader
  (package
    (name "python-kicad-netlist-reader")
    (version "5.1.11")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "kicad-netlist-reader" version))
        (sha256
          (base32 "13rff9gaij42x5mb5qlj54gpbbsgmr47mn74wrzajmxjkss6lj13"))))
    (build-system python-build-system)
    (home-page "https://github.com/janelia-pypi/kicad_netlist_reader")
    (synopsis "KiCad python module for interpreting generic netlists.")
    (description "KiCad python module for interpreting generic netlists.")
    (license license:gpl3)))

python-kicad-netlist-reader
