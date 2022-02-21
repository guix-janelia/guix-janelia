(define-module (guix-janelia packages python)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module (gnu packages python-build)
  )


(define python-kicad-netlist-reader
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

(define-public python-kicad-bom
  (package
   (name "python-kicad-bom")
   (version "4.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "kicad_bom" version))
     (sha256
      (base32 "1y922yjwxadhzg7gg6sif0ppjp87f3zbi278n16mj1f6sbk0sm0y"))))
   (build-system python-build-system)
   (propagated-inputs (list
                       python-kicad-netlist-reader))
   (home-page "https://github.com/janelia-pypi/kicad_bom")
   (synopsis
    "KiCad Python module for generating bill of materials in multiple formats.")
   (description
    "KiCad Python module for generating bill of materials in multiple formats.")
   (license license:gpl3)))
