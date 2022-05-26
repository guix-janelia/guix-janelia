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

(define-public west-janelia
  (package
    (name "west-janelia")
    (version "0.13.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "west" version))
       (sha256
        (base32
         "1hw9qas8ry8prn24iqka8kw2nv7ndxr95mvwr5lww53w2sr7p807"))))
    (propagated-inputs
     (list python-colorama
           python-packaging
           python-pykwalify
           python-pyyaml
           python-pyelftools
           python-canopen
           python-progress
           python-psutil))
    (build-system python-build-system)
    (home-page "https://github.com/zephyrproject-rtos/west")
    (synopsis "Zephyr RTOS Project meta-tool")
    (description "West is the swiss-army knife command line tool of the Zephyr
project.  Its built-in commands provide a multiple repository management
system with features inspired by Google’s Repo tool and Git submodules.  West
simplifies configuration and is also pluggable: you can write your own west
\"extension commands\" which add additional features to west.  Zephyr uses
this feature to provide conveniences for building applications, flashing and
debugging them, and more.")
    (license license:expat)))

(define-public python-pylink-square
  (package
    (name "python-pylink-square")
    (version "0.12.0")
    (source
     ;; The tests suite appears to be incomplete in the PyPI archive.
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "http://www.github.com/Square/pylink")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0w0pi91gvaw9k2r267kpc1ryd74v19iq5ysn4j7pf4g2069gbgxf"))))
    (build-system python-build-system)
    (arguments
     `(#:phases (modify-phases %standard-phases
                  (add-after 'unpack 'patch-setup
                    (lambda _
                      (substitute* "setup.py"
                        (("mock == 2.0.0") "mock")))))))
    (native-inputs (list python-mock))
    (propagated-inputs (list python-future
                             python-psutil
                             python-six
                             libjaylink))
    (home-page "http://www.github.com/Square/pylink")
    (synopsis "Python interface for SEGGER J-Link.")
    (description "Python interface for SEGGER J-Link.")
    (license license:asl2.0)))
