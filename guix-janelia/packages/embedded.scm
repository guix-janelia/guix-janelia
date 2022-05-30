(define-module (guix-janelia packages embedded)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages embedded)
  #:use-module (gnu packages check)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module (guix-janelia packages python-xyz)
  )

;; (define-public python-pylink-square
;;   (package
;;    (name "python-pylink-square")
;;    (version "0.13.0")
;;    (source
;;     ;; The tests suite appears to be incomplete in the PyPI archive.
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;;            (url "http://www.github.com/Square/pylink")
;;            (commit (string-append "v" version))))
;;      (file-name (git-file-name name version))
;;      (sha256
;;       (base32 "1g4chq36z678n2rkh9rikjn1bcgyq1isa5q3yd29fpvcx72ahza8"))))
;;    (build-system python-build-system)
;;    (arguments
;;     `(#:phases (modify-phases %standard-phases
;;                               (add-after 'unpack 'patch-setup
;;                                          (lambda _
;;                                            (substitute* "setup.py"
;;                                                         (("mock == 2.0.0") "mock")))))))
;;    (native-inputs (list python-mock))
;;    (propagated-inputs (list python-future
;;                             python-psutil
;;                             python-six
;;                             libjaylink))
;;    (home-page "https://www.github.com/Square/pylink")
;;    (synopsis "Python interface for SEGGER J-Link")
;;    (description "Python interface for debugging and flash programming via
;; the SEGGER J-Link debug probe.")
;;    (license license:asl2.0)))

;; (define-public zephyr
;;   (package
;;    (name "zephyr")
;;    (version "3.0.0")
;;    (source
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;;            (url "https://github.com/zephyrproject-rtos/zephyr")
;;            (commit (string-append "v" version))))
;;      (file-name (git-file-name name version))
;;      (sha256
;;       (base32 "0w0pi91gvaw9k2r267kpc1ryd74v19iq5ysn4j7pf4g2069gbgxf"))))
;;    (propagated-inputs
;;     (list cmake
;;           python

;;           python-colorama
;;           python-packaging
;;           python-pykwalify
;;           python-pyyaml

;;           ;; the following dependencies are not needed for west directly, but
;;           ;; they are needed to build zephyr projects using west. In the
;;           ;; future, these could be moved to a separate zephyr package

;;           ;; these dependencies are listed in zephyr requirements-base.txt
;;           python-pyelftools
;;           python-canopen
;;           python-progress
;;           python-psutil
;;           python-pylink-square
;;           python-anytree
;;           python-intelhex

;;           ;; these dependencies are listed in zephyr requirements-build-test.txt
;;           python-ply
;;           python-gcovr
;;           python-coverage
;;           python-pytest
;;           python-mypy
;;           python-mock
;;           ))
;;    (build-system copy-build-system)
;;    (home-page "https://github.com/zephyrproject-rtos/zephyr")
;;    (synopsis "Zephyr RTOS Project main repository")
;;    (description "The Zephyr Project is a scalable real-time operating
;; system (RTOS) supporting multiple hardware architectures, optimized for resource
;; constrained devices, and built with security in mind.  The Zephyr OS is based on
;; a small-footprint kernel designed for use on resource-constrained systems: from
;; simple embedded environmental sensors and LED wearables to sophisticated smart
;; watches and IoT wireless gateways.  The Zephyr kernel supports multiple
;; architectures, including ARM (Cortex-A, Cortex-R, Cortex-M), Intel x86, ARC,
;; Nios II, Tensilica Xtensa, and RISC-V, SPARC, MIPS, and a large number of
;; supported boards.")
;;    (license license:asl2.0)))
