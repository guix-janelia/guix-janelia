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

(define-public python-plotext
  (package
    (name "python-plotext")
    (version "5.0.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "plotext" version))
              (sha256
               (base32
                "1p28hdxgjhdrcwq795nqrglcp6v5cl936mbah31dqhgjk6cy5v71"))))
    (build-system python-build-system)
    ;; tests pass when run manually with test() function after install
    ;; tests fail when run automatically during build with error:
    ;; TypeError: don't know how to make test from: unix
    (arguments
     `(#:tests? #f))
    (propagated-inputs (list python-pillow))
    (home-page "https://github.com/piccolomo/plotext")
    (synopsis "2D plotting library for Python to plot directly on a terminal")
    (description
     "Plotext is a Python 2D plotting library which produces
figures directly on a terminal with syntax similar to matplotlib and can save
plots as text or as colored html.")
    (license license:expat)))

(define-public python-plotille
  (package
    (name "python-plotille")
    (version "4.0.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "plotille" version))
              (sha256
               (base32
                "0fvsk6glxfphhqy405h05rj3v95jd1byl5hv2fyd5l31wln23shj"))))
    (build-system python-build-system)
    (native-inputs (list python-six))
    (home-page "https://github.com/tammoippen/plotille")
    (synopsis "Plot in the terminal using braille dots")
    (description
     "This package provides a figure class and graphing functions
to create plots, scatter plots, histograms and heatmaps in the terminal using
braille dots.")
    (license license:expat)))

