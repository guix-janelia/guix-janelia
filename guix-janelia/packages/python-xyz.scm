(define-module (guix-janelia packages python-xyz)
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

(define-public python-pint
  (package
    (name "python-pint")
    (version "0.19.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "Pint" version))
              (sha256
               (base32
                "1bsbiikm9i4saqc6mc3minkmrgnsgcg734agsvd7icqhyngrim71"))))
    (build-system python-build-system)
    (native-inputs (list python-pytest
                         python-pytest-cov
                         python-pytest-mpl
                         python-pytest-subtests
                         python-setuptools-scm
                         python-sparse
                         python-dask
                         python-xarray
                         python-distributed))
    (home-page "https://github.com/hgrecco/pint")
    (synopsis "Physical quantities module")
    (description
     "Pint is a Python package to define, operate and manipulate
physical quantities: the product of a numerical value and a unit of
measurement.  It allows arithmetic operations between them and conversions from
and to different units.")
    (license license:bsd-3)))
