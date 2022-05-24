(define-module (guix-janelia packages embedded)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system python)
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
        (base32 "1hw9qas8ry8prn24iqka8kw2nv7ndxr95mvwr5lww53w2sr7p807"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-colorama
           python-packaging
           python-pykwalify
           python-pyyaml
           python-setuptools))
    (home-page "https://github.com/zephyrproject-rtos/west")
    (synopsis "Zephyr RTOS Project meta-tool")
    (description "Zephyr RTOS Project meta-tool")
    (license #f)))
