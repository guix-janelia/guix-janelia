(define-module (guix-janelia packages qp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  )

(define-public qpc
  (package
    (name "qpc")
    (version "7.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/QuantumLeaps/qpc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1g8imcpyr9vd8c7c5vjmgs1crn5g2j9390sfa2kdvq9s6a9bq11b"))))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("." "share/qpc"
           #:exclude-regexp ("3rd_party"
                             ".gitignore"
                             ".gitmodules"
                             "examples")))
      #:modules '(((guix build gnu-build-system) #:prefix gnu:)
                  (guix build copy-build-system)
                  (guix build utils)
                  (ice-9 match))))
    (native-search-paths
     (list (search-path-specification
            (variable "QPC")
            (files '("share/qpc")))))
    (propagated-inputs (list coreutils gcc-toolchain gnu-make))
    (home-page "https://www.state-machine.com/qpc/")
    (synopsis "Real-time framework in C for building embedded software as systems of asynchronous event-driven active objects")
    (description "This package contains a real-time framework in C for building embedded systems based on active objects and hierarchical state machines.")
    (license license:gpl3+)))
