(define-module (guix-janelia packages python-guix)
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

(define-public python-quart
  (package
    (name "python-quart")
    (version "0.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "Quart" version))
       (sha256
        (base32 "0h4n2dwzmqifya1razp9s7ppr4ra23ljac9v7sl039rzp3c17wic"))))
    (build-system python-build-system)
    (propagated-inputs
     (list hypercorn
           python-aiofiles
           python-blinker
           python-click
           python-itsdangerous
           python-jinja2
           python-markupsafe
           python-toml
           python-werkzeug))
    (home-page "https://gitlab.com/pgjones/quart/")
    (synopsis "Python ASGI web microframework with the same API as Flask")
    (description
     "This package provides a Python ASGI web microframework with the same API as
Flask")
    (license license:expat)))

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
   (propagated-inputs
    (list python-quart
          python-sanic
          python-tornado
          ))
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
    (propagated-inputs (list python-nose))
    (home-page "https://github.com/google/sre_yield")
    (synopsis "Expands a regular expression to its possible matches")
    (description "Expands a regular expression to its possible matches")
    (license #f)))

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

(define-public python-flatten-json
  (package
    (name "python-flatten-json")
    (version "0.1.13")
    (source
      (origin
        (method url-fetch)
        (uri (pypi-uri "flatten_json" version))
        (sha256
          (base32 "007m28gfs7pmz2rqqjxpial6skzw26hrfi8vrdy9agi9x0rj6dgf"))))
    (build-system python-build-system)
    (propagated-inputs (list python-six))
    (home-page "https://github.com/amirziai/flatten")
    (synopsis "Flatten JSON objects")
    (description "Flatten JSON objects")
    (license license:expat)))
