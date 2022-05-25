(define-module (guix-janelia packages python-guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages check)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix utils)
  #:use-module (guix build-system python)
  )

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

(define-public python-vitables
  (package
    (name "python-vitables")
    (version "3.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "ViTables" version))
       (sha256
        (base32 "1vk80a8jbg0phxgf31rnm7gq34mllv7hb5h0bypz4kv7n3150iln"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-numexpr
           python-numpy
           python-pyqt
           python-qtpy
           python-tables))
    (arguments
     `(#:tests? #f))
    (home-page "https://vitables.org")
    (synopsis "GUI for browsing PyTables and HDF5 files")
    (description "ViTables is a GUI for browsing and editing files in both
PyTables and HDF5 formats. ViTables capabilities include easy navigation
through the data hierarchy, displaying of real data and its associated
metadata, a simple, yet powerful, browsing of multidimensional data and much
more. As a viewer, one of the greatest strengths of ViTables is its ability to
display very large datasets.")
    (license license:gpl3)))

(define-public python-canopen
  (package
    (name "python-canopen")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "canopen" version))
       (sha256
        (base32 "1nb543wb37kj95v6bhh272lm5gkpi41q3pnsl1fxlyizm2gamj5w"))))
    (build-system python-build-system)
    (native-inputs (list python-packaging))
    (propagated-inputs (list python-can))
    (home-page "")
    (synopsis "CANopen stack implementation")
    (description "A Python implementation of the CANopen standard. The aim of
the project is to support the most common parts of the CiA 301 standard in a
simple Pythonic interface. It is mainly targeted for testing and automation
tasks rather than a standard compliant master implementation.")
    (license license:expat)))
