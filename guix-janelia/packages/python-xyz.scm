(define-module (guix-janelia packages python-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages base)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages qt)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix utils)
  #:use-module (guix build-system python)
  #:use-module (guix build-system pyproject)
  )

(define-public python-nmap
  (package
    (name "python-nmap")
    (version "1.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "python3-nmap" version))
       (sha256
        (base32 "0b16ni4ywylj0k24x1pi6bp83d80wvd0ri2h225gmkgm2fqcyrc4"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-simplejson nmap which))
    (native-inputs (list python-setuptools python-wheel))
    (home-page "https://github.com/nmmapper/python3-nmap")
    (synopsis
     "Python interface to the nmap utility for network discovery and security auditing")
    (description
     "This library helps use the nmap port scanner in Python, allowing
automation of scanning tasks and reports.")
    (license license:gpl3)))

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
