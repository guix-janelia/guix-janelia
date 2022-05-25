(define-module (guix-janelia packages embedded)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
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
           python-canopen))
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
west-janelia
