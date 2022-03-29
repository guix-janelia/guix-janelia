(define-module (guix-janelia packages python)
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
  )


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
   (license license:gpl3))
  )

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

(define-public python-starlette
  (package
   (name "python-starlette")
   (version "0.19.0")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "starlette" version))
     (sha256
      (base32 "176d7chv47xpm4hv96gz62bl921yhq9c38llqsjc7b6vi6m946ja"))))
   (build-system python-build-system)
   (propagated-inputs
    (list python-anyio python-contextlib2 python-typing-extensions))
   (home-page "https://github.com/encode/starlette")
   (synopsis "The little ASGI library that shines.")
   (description "The little ASGI library that shines.")
   (license license:bsd-3)))

(define-public python-ajsonrpc
  (package
   (name "python-ajsonrpc")
   (version "1.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "ajsonrpc" version))
     (sha256
      (base32 "17x1a4r4l428mhwn53abki9gzdzq3halyr4lj48fw3dzy0caq6vr"))))
   (build-system python-build-system)
   (home-page "https://github.com/pavlov99/ajsonrpc")
   (synopsis "Async JSON-RPC 2.0 protocol + server powered by asyncio")
   (description "Async JSON-RPC 2.0 protocol + server powered by asyncio")
   (license license:expat)))

;; (define-public python-platformio
;;   (package
;;    (name "python-platformio")
;;    (version "5.2.5")
;;    (source
;;     (origin
;;      (method url-fetch)
;;      (uri (pypi-uri "platformio" version))
;;      (sha256
;;       (base32 "1bn488yfhjxkbm9d32q9cnmd3rd6996shdsxnhp9bhbsl7w1y3da"))))
;;    (build-system python-build-system)
;;    (propagated-inputs
;;     (list python-aiofiles
;;           python-ajsonrpc
;;           python-bottle
;;           python-click
;;           python-colorama
;;           python-marshmallow
;;           python-pyelftools
;;           python-pyserial
;;           python-requests
;;           python-semantic-version
;;           python-starlette
;;           python-tabulate
;;           python-uvicorn
;;           python-wsproto
;;           python-zeroconf))
;;    (home-page "https://platformio.org")
;;    (synopsis
;;     "A professional collaborative platform for embedded development. Cross-platform IDE and Unified Debugger. Static Code Analyzer and Remote Unit Testing. Multi-platform and Multi-architecture Build System. Firmware File Explorer and Memory Inspection. IoT, Arduino, CMSIS, ESP-IDF, FreeRTOS, libOpenCM3, mbedOS, Pulp OS, SPL, STM32Cube, Zephyr RTOS, ARM, AVR, Espressif (ESP8266/ESP32), FPGA, MCS-51 (8051), MSP430, Nordic (nRF51/nRF52), NXP i.MX RT, PIC32, RISC-V, STMicroelectronics (STM8/STM32), Teensy")
;;    (description
;;     "This package provides a professional collaborative platform for embedded
;; development.  Cross-platform IDE and Unified Debugger.  Static Code Analyzer and
;; Remote Unit Testing.  Multi-platform and Multi-architecture Build System.
;; Firmware File Explorer and Memory Inspection.  IoT, Arduino, CMSIS, ESP-IDF,
;; FreeRTOS, libOpenCM3, mbedOS, Pulp OS, SPL, STM32Cube, Zephyr RTOS, ARM, AVR,
;; Espressif (ESP8266/ESP32), FPGA, MCS-51 (8051), MSP430, Nordic (nRF51/nRF52),
;; NXP i.MX RT, PIC32, RISC-V, STMicroelectronics (STM8/STM32), Teensy")
;;    (license license:asl2.0)))

(define-public python-sre-yield
  (package
    (name "python-sre-yield")
    (version "1.2")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "sre_yield" version))
        (sha256
          (base32 "12kv3mvdr22g2v9wfr5aabh1f58s817dbh8mrlfzxzxs7hm1lkz9"))))
    (build-system python-build-system)
    (home-page "https://github.com/google/sre_yield")
    (synopsis "Expands a regular expression to its possible matches")
    (description "Expands a regular expression to its possible matches")
    (license #f)))

(define-public python-serial-interface
  (package
    (name "python-serial-interface")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "serial_interface" version))
        (sha256
          (base32 "0hj8f6rs7a0d5ggq5a6vwdmwzylh64yvzmqrdw0iqka9i0srrym9"))))
    (build-system python-build-system)
    (propagated-inputs (list python-pyserial))
    (home-page "https://github.com/janelia-pypi/serial_interface_python")
    (synopsis
      "Extends serial.Serial to add methods such as auto discovery of available serial ports in Linux, Windows, and Mac OS X")
    (description
      "Extends serial.Serial to add methods such as auto discovery of available serial
ports in Linux, Windows, and Mac OS X")
    (license license:bsd-3)))

(define-public python-modular-client
  (package
    (name "python-modular-client")
    (version "8.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "modular_client" version))
        (sha256
          (base32 "1b1cv3m8fcbzrg0nmrh7l48d0pkz7apkxfx4mvy3004jwzkr4f41"))))
    (build-system python-build-system)
    (propagated-inputs
      (list python-inflection
            python-pyserial
            python-serial-interface
            python-sre-yield))
    (home-page "https://github.com/janelia-pypi/modular_client_python")
    (synopsis
      "Modular device Python client interface for communicating with and calling remote methods on modular device servers.")
    (description
      "Modular device Python client interface for communicating with and calling remote
methods on modular device servers.")
    (license license:bsd-3)))
