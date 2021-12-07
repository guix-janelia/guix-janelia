(define-module (guix-janelia packages python)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages python)
  #:use-module (gnu packages)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))


(define-public python-kicad-netlist-reader
  (package
  (name "python-kicad-netlist-reader")
  (version "1.1.4")
  (source
    (origin
      (method url-fetch)
      (uri (pypi-uri "kicad_netlist_reader" version))
      (sha256
        (base32 "113nddpdl0r008vz9xlkkanz4amlp25f1kd3aka3jmqx6kxnz18b"))))
  (build-system python-build-system)
  (home-page "https://github.com/janelia-pypi/kicad_netlist_reader")
  (synopsis "KiCad python module for interpreting generic netlists.")
  (description "KiCad python module for interpreting generic netlists.")
  (license license:gpl3)))
