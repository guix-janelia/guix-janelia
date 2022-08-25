(define-module (guix-janelia packages python-janelia)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix utils)
  #:use-module (guix build-system python)
  #:use-module (guix-janelia packages python-xyz))

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

(define python-kicad-netlist-reader
  (package
    (name "python-kicad-netlist-reader")
    (version "5.1.12")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "kicad_netlist_reader" version))
       (sha256
        (base32 "0hd8qz4yysy7w4pdpf7rfp2r1kwrx6hi8qnpbnzl885s00p12c8z"))))
    (build-system python-build-system)
    (home-page "https://github.com/janelia-pypi/kicad_netlist_reader")
    (synopsis "KiCad python module for interpreting generic netlists.")
    (description "KiCad python module for interpreting generic netlists.")
    (license license:gpl3)))

(define-public python-lickport-array-interface
  (package
    (name "python-lickport-array-interface")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "lickport_array_interface" version))
       (sha256
        (base32 "1q6d8pkra4xgrdhxkmkjgci0aj13k5dz1kxy944sscd6s0xiy7na"))))
    (build-system python-build-system)
    (propagated-inputs (list python-modular-client))
    (home-page "https://github.com/janelia-pypi/lickport_array_interface_python")
    (synopsis "Lickport array interface.")
    (description "Lickport array interface.")
    (license license:bsd-3)))

(define-public python-modular-client
  (package
    (name "python-modular-client")
    (version "8.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "modular_client" version))
       (sha256
        (base32 "0xz9hfdawj2b834g8jikc44sad1f9vifdfyixz306xzwpp4nsqfy"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-inflection python-serial-interface python-sre-yield))
    (home-page "https://github.com/janelia-pypi/modular_client_python")
    (synopsis
     "Modular device Python client interface for communicating with and calling remote methods on modular device servers.")
    (description
     "Modular device Python client interface for communicating with and calling remote
methods on modular device servers.")
    (license license:bsd-3)))

(define-public python-serial-interface
  (package
    (name "python-serial-interface")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "serial_interface" version))
              (sha256
               (base32
                "0l3a8aqp0s55l62qf7km06mnc560p2qgay134i8hnyps30kxllmr"))))
    (build-system python-build-system)
    (propagated-inputs (list python-pyserial))
    (home-page "https://github.com/janelia-pypi/serial_interface_python")
    (synopsis "Extends pyserial Serial to add convenience methods.")
    (description "Extends pyserial Serial to add convenience methods.")
    (license license:bsd-3)))

(define-public python-loadstar-sensors-interface
  (package
    (name "python-loadstar-sensors-interface")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "loadstar_sensors_interface" version))
              (sha256
               (base32
                "0c0ciwxsand0pbqgf828wgsjb3m5hfzsbkcwndmivsrb424lzyl0"))))
    (build-system python-build-system)
    (propagated-inputs (list python-serial-interface
                             python-click
                             python-plotext))
    (home-page
     "https://github.com/janelia-pypi/loadstar_sensors_interface_python")
    (synopsis "Python interface to Loadstar Sensors USB devices.")
    (description "Python interface to Loadstar Sensors USB devices.")
    (license license:bsd-3)))
